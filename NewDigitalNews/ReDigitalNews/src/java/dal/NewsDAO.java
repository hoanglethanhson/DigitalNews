/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.News;

/**
 *
 * @author dell
 */
public class NewsDAO extends BaseDAO<News> {

    public ArrayList<News> getAll() {
        ArrayList<News> list = new ArrayList();
        try {

            String query = "SELECT [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Writer]\n"
                    + "      ,[Date]\n"
                    + "      ,[Image]\n"
                    + "  FROM [dbo].[News]";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                News news = new News();
                news.setId(rs.getInt("ID"));
                news.setTitle(rs.getString("Title"));
                news.setContent(rs.getString("Content"));
                news.setDate(rs.getDate("Date"));
                news.setImage(rs.getString("Image"));
                news.setWriter(rs.getString("Writer"));
                list.add(news);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<News> getLatestNews() {
        ArrayList<News> list = new ArrayList();
        try {

            String query = "SELECT TOP 5 [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Writer]\n"
                    + "      ,[Date]\n"
                    + "      ,[Image]\n"
                    + "  FROM [dbo].[News] ORDER BY DATE DESC";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                News news = new News();
                news.setId(rs.getInt("ID"));
                news.setTitle(rs.getString("Title"));
                news.setContent(rs.getString("Content"));
                news.setDate(rs.getDate("Date"));
                news.setImage(rs.getString("Image"));
                news.setWriter(rs.getString("Writer"));
                list.add(news);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public News getTopNews() {
        News news = new News();
        try {

            String query = "SELECT TOP 1 [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Writer]\n"
                    + "      ,[Date]\n"
                    + "      ,[Image]\n"
                    + "  FROM [dbo].[News] ORDER BY DATE DESC";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                
                news.setId(rs.getInt("ID"));
                news.setTitle(rs.getString("Title"));
                news.setContent(rs.getString("Content"));
                news.setDate(rs.getDate("Date"));
                news.setImage(rs.getString("Image"));
                news.setWriter(rs.getString("Writer"));
                return news;
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public News getNews(int id) {
        News news = new News();
        try {

            String query = "SELECT [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Writer]\n"
                    + "      ,[Date]\n"
                    + "      ,[Image]\n"
                    + "  FROM [dbo].[News] WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                
                news.setId(rs.getInt("ID"));
                news.setTitle(rs.getString("Title"));
                news.setContent(rs.getString("Content"));
                news.setDate(rs.getDate("Date"));
                news.setImage(rs.getString("Image"));
                news.setWriter(rs.getString("Writer"));
                return news;
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<News> search(String title) {
        ArrayList<News> list = new ArrayList();
        try {

            String query = "SELECT [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Writer]\n"
                    + "      ,[Date]\n"
                    + "      ,[Image]\n"
                    + "  FROM [dbo].[News] WHERE Title LIKE ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, "%" + title + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                News news = new News();
                news.setId(rs.getInt("ID"));
                news.setTitle(rs.getString("Title"));
                news.setContent(rs.getString("Content"));
                news.setDate(rs.getDate("Date"));
                news.setImage(rs.getString("Image"));
                news.setWriter(rs.getString("Writer"));
                list.add(news);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public int count(String title) {
        String query = "SELECT COUNT(*) as TotalRows FROM News WHERE Title LIKE ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, "%" + title + "%");
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("TotalRows");
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<News> all(int start, int end, String title) {
        ArrayList<News> list = new ArrayList<>();
        String query = "select rn,[ID], [Title], [Content], [Writer], [Date], [Image]"
                + " from (\n"
                + "    select ROW_NUMBER() over (order by Date DESC) as rn, [ID], [Title], [Content], [Writer], [Date], [Image]\n"
                + "    from News WHERE Title LIKE ?\n"
                + ") as x\n"
                + "where rn between ? and ? ";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, "%" + title + "%");
            statement.setInt(2, start);
            statement.setInt(3, end);
            
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                News news = new News();
                news.setId(rs.getInt("ID"));
                news.setTitle(rs.getString("Title"));
                news.setContent(rs.getString("Content"));
                news.setDate(rs.getDate("Date"));
                news.setImage(rs.getString("Image"));
                news.setWriter(rs.getString("Writer"));
                list.add(news);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

}
