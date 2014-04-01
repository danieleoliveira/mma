package br.com.ufpb.dsc.mma.web;

import br.com.ufpb.dsc.mma.domain.Fighter;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Fighter.class)
@Controller
@RequestMapping("/fighters")
public class FighterController {
}
