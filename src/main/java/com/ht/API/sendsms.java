package com.ht.API;

import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

public class sendsms {

	private static String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";

	public static void main(String[] args) {

		HttpClient client = new HttpClient();
		PostMethod method = new PostMethod(Url);

		client.getParams().setContentCharset("utf-8");
		method.setRequestHeader("ContentType",
				"application/x-www-form-urlencoded;charset=utf-8");

		int mobile_code = (int) ((Math.random() * 9 + 1) * 100000);

		String content = new String("您的验证码是：" + mobile_code + "。请不要把验证码泄露给其他人。");
		System.out.println(mobile_code + "===============");
		NameValuePair[] data = {// 提交短信
				new NameValuePair("account", "C52376107"), // 查看用户名请登录用户中心->验证码、通知短信->帐户及签名设置->APIID
				new NameValuePair("password",
						"c37cbb4b7a3ca64ae9227d9be56eb989"), // 查看密码请登录用户中心->验证码、通知短信->帐户及签名设置->APIKEY
				new NameValuePair("mobile", "15679760329"),
				new NameValuePair("content", content), };
		method.setRequestBody(data);

		try {
			client.executeMethod(method);

			String SubmitResult = method.getResponseBodyAsString();

			// System.out.println(SubmitResult);

			Document doc = DocumentHelper.parseText(SubmitResult);
			Element root = doc.getRootElement();

			String code = root.elementText("code");
			String msg = root.elementText("msg");
			String smsid = root.elementText("smsid");

			System.out.println(code);
			System.out.println(msg);
			System.out.println(smsid);

			if ("2".equals(code)) {
				System.out.println("短信提交成功");
			}

		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}