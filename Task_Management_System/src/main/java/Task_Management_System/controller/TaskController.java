package Task_Management_System.controller;

import Task_Management_System.model.Task;
import Task_Management_System.repository.TaskGiving;

import java.beans.PropertyEditorSupport;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TaskController {

    @Autowired
    private TaskGiving taskgiving;

    //FIX FOR LocalDateTime (REQUIRED FOR REMINDER)
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(LocalDateTime.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                setValue(LocalDateTime.parse(text, DateTimeFormatter.ISO_LOCAL_DATE_TIME));
            }
        });
    }

    // OPEN HOME PAGE
    @GetMapping("/")
    public String getMessage(Model model) {
        List<Task> task = taskgiving.getAllTask();
        model.addAttribute("task", task);
        return "home";
    }

    // OPEN ADD TASK FORM
    @GetMapping("/add-task")
    public String openTaskForm() {
        return "AddTask";
    }

    // SAVE TASK WITH REMINDER
    @PostMapping("/handle-task")
    public String readFormData(Task task) {

        System.out.println(task.getTitle());
        System.out.println(task.getDescription());
        System.out.println(task.getDueDate()); // ✅ Reminder time

        //  IMPORTANT: reminder must start as FALSE
        task.setReminderStatus(false);

        boolean b = taskgiving.saveTask(task);

        if (b) {
            System.out.println("✅ Task saved with reminder!");
        } else {
            System.out.println("❌ Task not saved");
        }

        return "redirect:/";
    }

    //  DELETE TASK
    @GetMapping("/delete/{id}")
    public String deleteEmployeeByID(@PathVariable("id") int id) {
        taskgiving.deleteEmployeeByID(id);
        return "redirect:/";
    }

    //  OPEN UPDATE FORM
    @GetMapping("/update/{empid}")
    public String openUpdateForm(@PathVariable("empid") int empid, Model model) {
        Task task = taskgiving.getTaskByID(empid);
        model.addAttribute("task", task);
        return "update-task";
    }

    // UPDATE TASK
    @PostMapping("/update-handler")
    public String handleUpdate(Task task) {
        taskgiving.updateRecord(task);
        return "redirect:/";
    }
}
