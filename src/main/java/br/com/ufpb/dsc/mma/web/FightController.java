package br.com.ufpb.dsc.mma.web;

import br.com.ufpb.dsc.mma.domain.Fight;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Fight.class)
@Controller
@RequestMapping("/fights")
public class FightController {
}
