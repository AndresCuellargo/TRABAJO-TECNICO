package com.example.registro;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDate;

@Entity
@Table(name = "usuarios")
@Data // Genera getters, setters, toString, equals y hashcode
@NoArgsConstructor // Genera constructor vacío
@AllArgsConstructor // Genera constructor con todos los campos
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nombres;
    private String apellidos;
    
    @Column(unique = true, nullable = false)
    private String cedula;
    
    private LocalDate fechaNacimiento;
    
    @Column(unique = true, nullable = false)
    private String username;
    
    private String password;
}