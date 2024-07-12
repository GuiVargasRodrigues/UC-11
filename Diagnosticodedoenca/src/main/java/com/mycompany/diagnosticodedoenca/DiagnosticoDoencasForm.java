package com.mycompany.diagnosticodedoenca;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class DiagnosticoDoencasForm {
    private JPanel mainPanel;
    private JLabel headerLabel;
    private JPanel checkboxPanel;
    private JButton diagnoseButton;
    private JLabel footerLabel;
    private JButton githubButton;

    public DiagnosticoDoencasForm() {
        // Set up the checkboxes
        String[] sintomas = {
                "Febre Alta", "Dor de cabeça", "Sangramentos", "Dor muscular", "Calafrios",
                "Olhos vermelhos", "Vômitos", "Contrações musculares dolorosas", "Dificuldade para respirar",
                "Pressão alta", "Sudorese", "Sangramentos nas fezes", "Dores abdominais", "Muco nas fezes",
                "Fadiga", "Icterícia", "Urina escura", "Fezes claras", "Perda de apetite",
                "Erupções cutâneas", "Dores nas articulações", "Hemorragia intensa", "Edema", "Rubor",
                "Dor após picada", "Eritema", "Hematoma", "Formação de bolhas", "Áreas de ulceração"
        };

        checkboxPanel.setLayout(new GridLayout(sintomas.length, 1));
        for (String sintoma : sintomas) {
            JCheckBox checkBox = new JCheckBox(sintoma);
            checkboxPanel.add(checkBox);
        }

        // Set up the diagnose button action
        diagnoseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Handle form submission
                // For simplicity, we just show a message dialog here
                JOptionPane.showMessageDialog(mainPanel, "Diagnóstico realizado.");
            }
        });

        // Set up the GitHub button action
        githubButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    Desktop.getDesktop().browse(new java.net.URI("https://github.com/GuiVargasRodrigues/SOSRS"));
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        });
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("DiagnosticoDoencasForm");
        frame.setContentPane(new DiagnosticoDoencasForm().mainPanel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
