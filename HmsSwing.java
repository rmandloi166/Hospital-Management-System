/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hmsswing;
import javax.swing.*;
import java.awt.*;

/**
 *
 * @author Sanjeev
 */
public class HmsSwing {
    /**
     * @param args the command line arguments
     * @throws java.lang.InterruptedException
     */
    public static void main(String[] args) throws InterruptedException {
         Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
        int x = (screen.width - 427) / 2;
        int y = (screen.height - 267) / 2;
        JWindow win = new JWindow();
        SplashPanel s = new SplashPanel();
        win.setContentPane(s);
        win.setBounds(x, y, 427, 267);
        win.setVisible(true);
        try {
            for (int i = 1; i <=100; i++) {
                Thread.sleep(20);
                s.abc(i);
            }
        } catch (Exception e) {
        }
        win.setVisible(false);
        new Home1().setVisible(true);
    }    
    }    
