package Task_Management_System.repository;

import Task_Management_System.model.Task;
import java.util.List;

import org.springframework.stereotype.Repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.transaction.Transactional;

@Repository
public class TaskGiving {

    @PersistenceContext
    private EntityManager em;

    //  SAVE TASK
    @Transactional
    public boolean saveTask(Task task) {
        if (task != null) {
            em.persist(task);
            return true;
        }
        return false;
    }

    // GET ALL TASKS
    public List<Task> getAllTask() {
        Query query = em.createQuery("select e from Task e");
        List<Task> task = query.getResultList();
        return task;
    }

    // DELETE TASK BY ID
    @Transactional
    public void deleteEmployeeByID(int id) {
        Task task = em.find(Task.class, id);
        if (task != null) {
            em.remove(task);
        }
    }

    //  GET TASK BY ID (FOR UPDATE)
    public Task getTaskByID(int empid) {
        return em.find(Task.class, empid);
    }

    //  UPDATE TASK
    @Transactional
    public void updateRecord(Task task) {
        em.merge(task);
    }

    // NEW METHOD: GET PENDING REMINDERS
    public List<Task> getPendingReminders() {
        Query query = em.createQuery(
            "SELECT t FROM Task t WHERE t.reminderStatus = false AND t.dueDate IS NOT NULL"
        );
        return query.getResultList();
    }
}
