/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.londontec.wgustudentm.StudentMngSys.dbControllers.custom;

import edu.londontec.wgustudentm.StudentMngSys.dbControllers.SuperController;
import edu.londontec.wgustudentm.StudentMngSys.dto.StudentDTO;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ravindu
 */
public interface StudentDBController extends SuperController<StudentDTO>{
    public ArrayList<StudentDTO> getTableDetails() throws SQLException;
    
    public boolean searchNIC(String nic) throws SQLException;
    
    public boolean addStudent(StudentDTO student, String bid) throws SQLException;
    
    public StudentDTO getCardDetails(String nic) throws SQLException;
    
    public StudentDTO getCardDetails() throws SQLException;
    
    public String getName(String sid) throws SQLException;
    
    public String getId(String nic) throws SQLException;
}
