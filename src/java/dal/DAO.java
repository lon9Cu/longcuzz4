/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import com.sun.jdi.connect.spi.Connection;
import java.net.ConnectException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException e) {

        }
        return list;
    }
    
    public void insert(Category c){
        String sql="INSERT INTO dbo.Categories VALUES(?, ?, ?)";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, c.getId());
            ps.setString(2, c.getName());
            ps.setString(3, c.getDescribe());
            ps.executeUpdate();
        }catch (SQLException e){
            
        }
    }
    
    public Category getCategoryById(int id){
        String sql = "SELECT * FROM dbo.Categories WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (SQLException e) {

        }
        return null;
    }
    
    public void delete(int id){
        String sql="DELETE FROM dbo.Categories WHERE [ID] = ?";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        }catch (SQLException e){
            
        }
    }
    
    public void update(Category c){
        String sql="UPDATE Categories SET [name] = ?, [describe] = ? WHERE [ID] = ?";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, c.getName());
            ps.setString(2, c.getDescribe());
            ps.setInt(3, c.getId());
            ps.executeUpdate();
        }catch (SQLException e){
            
        }
    }
    
    public static void main(String[] args) {
        DAO c = new DAO();
        List<Category> list = c.getAll();
        System.out.println(list.get(0).getName());
    }
}
