package com.woniu.cat.controller.restapi;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.util.JSONPObject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class LoginApi {

    @PostMapping("/login/account")
    public String doLogin() {
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode node = mapper.createObjectNode();
        node.put("status", "ok");
        node.put("currentAuthority", "admin");
        System.out.println("**************************" + node.toString());
        return node.toString();
    }

    @GetMapping("/currentUser")
    public String currentUser() {
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode node = mapper.createObjectNode();
        node.put("name","Woniuniu");
        node.put("avatar","https://gw.alipayobjects.com/zos/antfincdn/XAosXuNZyF/BiazfanxmamNRoxxVxka.png");
        node.put("userid","00000001");
        node.put("email","test@c.ricoh.com");
        node.put("signature","海纳百川，有容乃大");
        node.put("title","Wow怀旧");
        node.put("group","一区-黑曜石之峰");
        node.put("notifyCount",12);
        node.put("unreadCount",11);
        node.put("country","China");
        node.put("address","漕河泾");
        node.put("phone","777-77777777");
        node.put("userid","00000001");

        ArrayNode tagNode = mapper.createArrayNode();
        node.set("tags", tagNode);
        System.out.println("**************************" + node.toString());
        return node.toString();

    }
}
