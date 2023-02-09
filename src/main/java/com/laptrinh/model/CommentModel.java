package com.laptrinh.model;

public class CommentModel extends AbstractModel<CommentModel> {

    public String context ;
    public Long user_id ;
    public Long new_id ;
    
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Long getUser_id() {
		return user_id;
	}
	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}
	public Long getNew_id() {
		return new_id;
	}
	public void setNew_id(Long new_id) {
		this.new_id = new_id;
	}
    
    
  
}
