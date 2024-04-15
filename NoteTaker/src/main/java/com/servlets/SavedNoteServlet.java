package com.servlets;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;



public class SavedNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public SavedNoteServlet(){
		super();
	}
	
	protected void doPost(HttpServletRequest req,HttpServletResponse res) {
		
		try {
			
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			Note note = new Note(title,content,new Date());
			
			// : Save
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.persist(note);
			tx.commit();
			s.close();
			PrintWriter out = res.getWriter();
			out.println("<h1 style='text-align:center;'>Note added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a></h1>");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
