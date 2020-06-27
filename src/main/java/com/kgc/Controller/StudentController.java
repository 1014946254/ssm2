package com.kgc.Controller;

import com.github.pagehelper.PageInfo;
import com.kgc.entity.Grade;
import com.kgc.entity.StudentCondition;
import com.kgc.entity.Students;
import com.kgc.service.GradeService;
import com.kgc.service.StudentService;
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
public class StudentController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private GradeService gradeService;

    @RequestMapping("/searchStudent")
    public String getAllStudents(Model model, StudentCondition studentCondition){
        System.out.println(1);
        PageInfo<Students> list = studentService.getAllStudentByCondition(studentCondition);
        model.addAttribute("pageInfo",list);
        model.addAttribute("condition",studentCondition);
        return "index";
    }

    @RequestMapping("/addStudent")
    public String addStudent(Model model,Students students){
        System.out.println(3);
        Integer integer = studentService.addStudent(students);
        return "redirect:searchStudent";


    }

    @RequestMapping("/selectByXh")
    public String selectByXh(Integer xh,Model model){
        Students students = studentService.selectByXh(xh);
        List<Grade> allGrade = gradeService.getAllGrade();

        model.addAttribute("st",students);
        model.addAttribute("a",allGrade);
        return "update";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent(Model model,Students students){
        Integer integer = studentService.updateStudent(students);
        return "index";


    }

    @RequestMapping("/deleteStudent")
    public String deleteStudent(Integer xh){
        Integer integer = studentService.deleteStudent(xh);
        return "redirect:searchStudent";


    }

}
