/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.londontec.wgustudentm.StudentMngSys.dbControllers.custom;

import edu.londontec.wgustudentm.StudentMngSys.dbControllers.SuperController;
import edu.londontec.wgustudentm.StudentMngSys.dto.ExamDetailDTO;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ravindu
 */
public interface ExamDetailDBController extends SuperController<ExamDetailDTO>{
    
    public boolean add(ArrayList<ExamDetailDTO> dtoList)throws SQLException;
}
