/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.londontec.wgustudentm.StudentMngSys.dbControllers.custom;

import edu.londontec.wgustudentm.StudentMngSys.dbControllers.SuperController;
import edu.londontec.wgustudentm.StudentMngSys.dto.PaymentDTO;
import java.sql.SQLException;

/**
 *
 * @author ravindu
 */
public interface PaymentDBController extends SuperController<PaymentDTO>{
    public String getLastPayment(String rid) throws SQLException;
    
}
