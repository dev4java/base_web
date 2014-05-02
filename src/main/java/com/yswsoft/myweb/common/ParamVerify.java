package com.yswsoft.myweb.common;

import javax.servlet.ServletRequest;

public final class ParamVerify {

	private ParamVerify(){
		
	}

    public static String getWebString(ServletRequest req, String name) {
        if (name == null)
            return null;
        name = name.replaceAll("<", "");
        name = name.replaceAll(">", "");
        return req.getParameter(name);
    }
}
