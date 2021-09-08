package net.blog.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.blog.www.model.PerCategory;
import net.blog.www.model.Post;
import net.blog.www.service.PerCategoryService;
import net.blog.www.service.PostService;

@Controller
@RequestMapping("/post/{id}")
public class PostController {
	final String path = "post/";
	
	@Autowired
	PerCategoryService pCateService;
	
	@Autowired
	PostService service;

	@GetMapping("/add")
	public String add(@PathVariable String id, Model model) {
		List<PerCategory> pCategoryList = pCateService.list(id);
		model.addAttribute("pCategoryList", pCategoryList);
		
		return path + "add";
	}
	@PostMapping("/add")
	public String add(Post item, @PathVariable String id) {
		item.setId(id);
		service.add(item);
		
		return "redirect:../{id}/list";
	}
	
	@RequestMapping({"/","/list"})
	public String list(Model model, @PathVariable String id) {
		List<Post> list = service.list(id);
		model.addAttribute("list", list);
		
		return path+"list";
	}
}
