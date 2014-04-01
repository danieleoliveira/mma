package br.com.ufpb.dsc.mma.web;

import br.com.ufpb.dsc.mma.domain.Category;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Category.class)
@Controller
@RequestMapping("/categorys")
public class CategoryController {
}
