/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.londontec.wgustudentm.StudentMngSys.dbControllers.custom;

import edu.londontec.wgustudentm.StudentMngSys.dbControllers.SuperController;
import edu.londontec.wgustudentm.StudentMngSys.dto.BatchDTO;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ravindu
 */
public interface BatchDBController extends SuperController<BatchDTO>{
    public String getAdmission(String batchId) throws SQLException;
    
    public String getFee(String batchId) throws SQLException;
    
    public ArrayList<String> getBatchIds(String cid) throws SQLException;
    
    public ArrayList<String> getBatchIds(String subName, String year) throws SQLException;
    
    public ArrayList<String> getSubject(ArrayList<String> bids) throws SQLException;
    
   public String getCid(String bid)throws SQLException;
   
   public String getId(String cid)throws SQLException;
   
   public String getFilteredId(String sid,String cid)throws SQLException;
   
   public ArrayList<String> getYear(String subName) throws SQLException;
   
}
