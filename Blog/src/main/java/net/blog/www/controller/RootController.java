package net.blog.www.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.blog.www.model.Member;
import net.blog.www.model.Post;
import net.blog.www.service.MemberService;
import net.blog.www.service.PostService;

@Controller
public class RootController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	PostService postService;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<Post> list = postService.utdList();
		model.addAttribute("list", list);
		
		return "index";
	}
	
	@ResponseBody
	@RequestMapping("/checkId")
	public String checkId(String id) {
		if(service.checkId(id))
			return "OK";
		else
			return "FAIL";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	@PostMapping("/signup")
	public String signup(Member item) {
		service.add(item);
		
		return "redirect:.";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@PostMapping("/login")
	public String login(Member item, HttpSession session) {
		Member member = service.item(item.getId());
		if(member !=null) {
			String id = member.getId();
			String passwd = member.getPw();
			
			if(id.equals(item.getId()) && passwd.equals(item.getPw())){
				session.setAttribute("member",member);
				session.setAttribute("id",id);
				return "redirect:.";
			}
			return "redirect:login";
		}
		
		return "redirect:login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:.";
	}
	
	@RequestMapping("/showDetail")
	public String showDetail(int pid, Model model) {
		Post item = postService.item(pid);
		
		model.addAttribute("item", item);
		
		return "showDetail";
	}
}
