package stproject.api.entities;

import antlr.StringUtils;


import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "prescription")
public class Prescription {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "medicine")
    private String medicine;

    @Column(name = "comment")
    private String comment;

    @Column(name = "date")
    private String date;

    @Column(name = "unique_prescription_number")
    private String uniquePrescriptionNumber;

    @Column(name= "results")
    private String results;

    @ManyToOne
    @JoinColumn(name="doctor_id")
    private Doctor doctor;

    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;

    public Prescription(){

    }

    public Prescription(Long id, String medicine, String comment, String date, String uniquePrescriptionNumber, Doctor doctor, Patient patient, String results) {
        this.id = id;
        this.medicine = medicine;
        this.comment = comment;
        this.date = date;
        this.uniquePrescriptionNumber = uniquePrescriptionNumber;
        this.doctor = doctor;
        this.patient = patient;
        this.results = results;
    }

    public String getResults() {
        return results;
    }

    public void setResults(String results) {
        this.results = results;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMedicine() {
        return medicine;
    }

    public void setMedicine(String medicine) {
        this.medicine = medicine;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUniquePrescriptionNumber() {
        return uniquePrescriptionNumber;
    }

    public void setUniquePrescriptionNumber(String uniquePrescriptionNumber) {
        this.uniquePrescriptionNumber = uniquePrescriptionNumber;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }
}
