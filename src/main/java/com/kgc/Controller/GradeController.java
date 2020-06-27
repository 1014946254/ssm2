package com.kgc.Controller;

import com.kgc.entity.Grade;
import com.kgc.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author:LiuHao
 * @Date:2020/5/17 12:17
 */
@Controller
public class GradeController {
    @Autowired
    private GradeService gradeService;
    @RequestMapping("/getAllGrade")
    public String getAllGrade(Model model){
        List<Grade> gradeList = gradeService.getAllGrade();
        model.addAttribute("gradeList",gradeList);
        return "addStudent";
    }


}
