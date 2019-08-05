/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.londontec.wgustudentm.StudentMngSys.dbControllers;

import edu.londontec.wgustudentm.StudentMngSys.dto.SuperDTO;
import java.sql.SQLException;

/**
 *
 * @author ravindu
 */
public interface SuperController<T extends SuperDTO>{
    public boolean add(T dto) throws SQLException;
    
    public T getAll(String id)throws SQLException;
}
