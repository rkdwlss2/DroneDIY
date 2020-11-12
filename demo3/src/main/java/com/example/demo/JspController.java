package com.example.demo;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class JspController {
 
    @RequestMapping("/jsp")
    public String jsp() throws Exception {
        return "main";
    }
    
    @RequestMapping("/abcd")
    public String abcd() throws Exception {
        return "abcd";
    }
    
   
}

