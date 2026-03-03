package com.devops.student_api;

import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/students")
public class StudentController {

    private List<Student> studentList = new ArrayList<>();

    public StudentController() {
        studentList.add(new Student(1, "Sowmiya", "DevOps"));
        studentList.add(new Student(2, "Rahul", "Java Backend"));
        studentList.add(new Student(3, "Priya", "Cloud Engineering"));
    }

    @GetMapping
    public List<Student> getAllStudents() {
        return studentList;
    }

    @GetMapping("/{id}")
    public Student getStudentById(@PathVariable int id) {
        return studentList.stream()
                .filter(s -> s.getId() == id)
                .findFirst()
                .orElse(null);
    }

    @PostMapping
    public String addStudent(@RequestBody Student student) {
        studentList.add(student);
        return "Student added successfully!";
    }

    @DeleteMapping("/{id}")
    public String deleteStudent(@PathVariable int id) {
        studentList.removeIf(s -> s.getId() == id);
        return "Student deleted successfully!";
    }
}