package com.javapandeng.controller;


import com.alibaba.fastjson.JSONObject;
import com.javapandeng.base.BaseController;
import com.javapandeng.po.*;
import com.javapandeng.service.ItemCategoryService;
import com.javapandeng.service.ItemService;
import com.javapandeng.service.ManageService;
import com.javapandeng.service.UserService;
import com.javapandeng.utils.Consts;
import com.javapandeng.utils.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/**
 * 登录相关的控制器
 */
@Controller
@RequestMapping("/login")
public class LoginController extends BaseController {

    @Autowired
    private ManageService manageService;

    @Autowired
    private ItemCategoryService itemCategoryService;

    @Autowired
    private ItemService itemService;

    @Autowired
    private UserService userService;

    /**
     * 管理员登录前
     * @return
     */
    @RequestMapping("login")
    public String login(){
        return "/login/mLogin";
    }

    /**
     * 登录验证
     * @return
     */
    @RequestMapping("toLogin")
    public String toLogin(Manage manage, HttpServletRequest request){
       Manage byEntity = manageService.getByEntity(manage);
       if(byEntity==null){
           return "redirect:/login/mtuichu";
       }
       request.getSession().setAttribute(Consts.MANAGE,byEntity);
       return "/login/mIndex";
    }

    /**
     * 管理员退出
     */
    @RequestMapping("mtuichu")
    public String mtuichu(HttpServletRequest request){
        request.getSession().setAttribute(Consts.MANAGE,null);
        return "/login/mLogin";
    }

    /**
     * 前端首页
     */
    @RequestMapping("/uIndex")
    public String uIndex(Model model, Item item,HttpServletRequest request){
        String sql1 = "select * from item_category where isDelete=0 and pid is null order by name";
        List<ItemCategory> fatherList = itemCategoryService.listBySqlReturnEntity(sql1);
        List<CategoryDto> list = new ArrayList<>();
        if(!CollectionUtils.isEmpty(fatherList)){
            for(ItemCategory ic:fatherList){
                CategoryDto dto = new CategoryDto();
                dto.setFather(ic);
                //查询二级类目
                String sql2 = "select * from item_category where isDelete=0 and pid="+ic.getId();
                List<ItemCategory> childrens = itemCategoryService.listBySqlReturnEntity(sql2);
                dto.setChildrens(childrens);
                list.add(dto);
                model.addAttribute("lbs",list);
            }
        }
        //折扣商品
        List<Item> zks = itemService.listBySqlReturnEntity("select * from item where isDelete=0 and zk is not null order by zk desc limit 0,10");
        model.addAttribute("zks",zks);

        //热销商品
        List<Item> rxs = itemService.listBySqlReturnEntity("select * from item where isDelete=0 order by gmNum desc limit 0,10");
        model.addAttribute("rxs",rxs);

        return "login/uIndex";
    }

    /**普通用户注册*/
    @RequestMapping("/res")
    public String res(){
        return "login/res";
    }

    /**执行普通用户注册*/
    @RequestMapping("/toRes")
    public String toRes(User u) throws NoSuchAlgorithmException {
        // 将用户输入的密码进行加密
        u.setPassWord(u.getPassWord());
        userService.insert(u);
        return "login/uLogin";
    }

    /**普通用户登录入口*/
    @RequestMapping("/uLogin")
    public String uLogin(){
        return "login/uLogin";
    }

    /**执行普通用户登录*/
    @RequestMapping("/utoLogin")
    public void utoLogin(User u,
                         HttpServletRequest request,
                         HttpSession session,
                         String verify,
                         HttpServletResponse  response) throws IOException, NoSuchAlgorithmException {
        // 将用户输入的密码进行加密
        u.setPassWord(u.getPassWord());
        // 设置响应的编码
        response.setContentType("text/html;charset=utf-8");
        // 获取系统生成的的验证码
        String verCode = (String) session.getAttribute("verCode");
        System.out.println("sheng cheng de yan zheng ma"+verCode);
        System.out.println("// shu ru de " + verify);
        // 判断用户输入的验证码
        if(verCode.equalsIgnoreCase(verify)) {
            // 查询数据库中是否有该用户的数据
            User byEntity = userService.getByEntity(u);
            if(byEntity==null){
                //用户名或密码错误！！！
//                return "redirect:/login/res.action";
                response.getWriter().println("<script>alert('用户名或密码有误');location.href='../login/uLogin.action'</script>");
            }else {
                request.getSession().setAttribute("role",2);
                request.getSession().setAttribute(Consts.USERNAME,byEntity.getUserName());
                request.getSession().setAttribute(Consts.USERID,byEntity.getId());
//                return "redirect:/login/uIndex.action";
                response.getWriter().println("<script>alert('登录成功');location.href='../login/uIndex.action'</script>");
            }
        }
//        return "redirect:/login/uLogin.action";
        response.getWriter().println("<script>alert('验证码不正确');location.href='../login/uLogin.action'</script>");
    }

    /**前端用户退出*/
    @RequestMapping("/uTui")
    public String uTui(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/login/uIndex.action";
    }

    /**
     * 修改密码入口
     */
    @RequestMapping("/pass")
    public String pass(HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if(attribute==null){
            return "redirect:/login/uLogin";
        }
        Integer userId = Integer.valueOf(attribute.toString());
        User load = userService.load(userId);
        request.setAttribute("obj",load);
        return "login/pass";
    }

    /**
     * 修改密码操作
     */
    @RequestMapping("/upass")
    @ResponseBody
    public String upass(String password,HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        JSONObject js = new JSONObject();
        if(attribute==null){
            js.put(Consts.RES,0);
            return js.toString();
        }
        Integer userId = Integer.valueOf(attribute.toString());
        User load = userService.load(userId);
        load.setPassWord(password);
        userService.updateById(load);
        js.put(Consts.RES,1);
        return js.toString();
    }


}
