package com.laptrinh.controller.admin;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinh.constant.SystemConstant;
import com.laptrinh.model.NewModel;
import com.laptrinh.paging.PageRequest;
import com.laptrinh.paging.Pageble;
import com.laptrinh.service.ICategoryService;
import com.laptrinh.service.INewService;
import com.laptrinh.sort.Sorter;
import com.laptrinh.utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-new" })
public class NewController extends HttpServlet {

	private static final long serialVersionUID = -6340665772832745655L;

	@Inject
	private INewService newService;

	@Inject
	private ICategoryService categoryService;
	
	ResourceBundle resourceBundle=ResourceBundle.getBundle("message");
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		NewModel model = FormUtil.toModel(NewModel.class, request);
		String view="";
		if(model.getType().equals(SystemConstant.LIST)) {
			Pageble pageble=new PageRequest(model.getPage(),model.getMaxPageItem(),new Sorter(model.getSortName(),model.getSortBy()));
			model.setListResult(newService.findAll(pageble));
			model.setTotalItem(newService.getTotalItem());
			model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
			request.setAttribute(SystemConstant.MODEL, model);
			view+="/views/admin/new/list.jsp";
		}else if((model.getType()).equals(SystemConstant.EDIT)) {
			if(model.getId()!=null) {
				model=newService.findOne(model.getId()); 
			}else {
				
			}	
			if(request.getParameter("message")!=null) {
				String message=request.getParameter("message");
				String alert=request.getParameter("alert");
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
				
			}
			request.setAttribute("categories",categoryService.findAll());
			view+="/views/admin/new/edit.jsp";
		}
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd=request.getRequestDispatcher(view);
		rd.forward(request, response); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {

	}
}
