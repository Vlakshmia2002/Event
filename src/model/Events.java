package model;

public class Events {
	String event_id;
	String event_img;
	 String event_name;
	 String event_cost;
	 String event_details;
	 String event_category;
	 String date;
	 public String getevent_id() {
	 return event_id;
	 }
	 public String getevent_img() {
		 return event_img;
		 }
	 
	 public String getevent_name() {
	 return event_name;
	 }
	 public String getevent_cost() {
	 return event_cost;
	 }
	 public String getevent_details() {
	 return event_details;
	 }
	 
	 public String getevent_category() {
	 return event_category;
	 }
	 public String getdate() {
		 return date;
		 }
	 public void setevent_id(String event_id) {
	 this.event_id = event_id;
	 }
	 public void setevent_img(String event_img) {
		 this.event_img = event_img;
		 }
	 public void setevent_name(String event_name) {
	 this.event_name = event_name;
	 }
	 public void setevent_cost(String event_cost) {
	 this.event_cost = event_cost;
	 }
	 public void setevent_details(String event_details) {
	 this.event_details = event_details;
	 }
	 public void setevent_category(String event_category) {
		 this.event_category = event_category;
		 }
	 public void setdate(String date) {
		 this.date=date;
	 }
	}

