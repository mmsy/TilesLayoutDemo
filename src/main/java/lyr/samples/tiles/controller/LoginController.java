package lyr.samples.tiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by lyr on 2017/7/11.
 */
@Controller
public class LoginController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(ModelAndView mv, @RequestParam(required = false, defaultValue = "") String error) {
        mv.setViewName("login");
        if (!StringUtils.isEmpty(error)) {
            mv.addObject("error", "用户名或密码错误");
        }
        return mv;
    }
}
