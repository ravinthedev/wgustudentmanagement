/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.londontec.wgustudentm.StudentMngSys.dbControllers.custom;

import edu.londontec.wgustudentm.StudentMngSys.dbControllers.SuperController;
import edu.londontec.wgustudentm.StudentMngSys.dto.SuperDTO;
import java.sql.SQLException;

/**
 *
 * @author ravindu
 */
public interface LoginDBController extends SuperController<SuperDTO>{
    public boolean Login(String username, String password) throws SQLException;
}
