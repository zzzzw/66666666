package com.zq.www.mis.action;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.org.momo.javaMail邮件.MailSenderInfo;
import com.org.momo.javaMail邮件.SimpleMailSender;
import com.zq.www.common.BaseAction;
//struts注解
@SuppressWarnings("serial")

@Results( { 
    
    @Result(name = "tz", location = "/BacksAdmin/mail/send.jsp" )
   
})
public class MailAction extends BaseAction
{
    private String sendto;
    private String title;
    private String content;
    
     
    
    public String send() throws Exception
    {
	     
	     System.out.println("a="+sendto);
	     System.out.println("b="+title);
	     System.out.println("c="+content);
	   //这个类主要是设置邮件  
	      MailSenderInfo mailInfo = new MailSenderInfo();   
	      mailInfo.setMailServerHost("smtp.163.com");     
	      mailInfo.setMailServerPort("25");  
	        
	      // true则需要身份认证，将账号和密码设置到 密码验证器 中  
	      mailInfo.setValidate(true);   
	      mailInfo.setUserName("stzengzhiwei@163.com");   
	      mailInfo.setPassword("ffcuqqbhgkzasaek");//您的邮箱密码   
	      //mailInfo.setPassword("wei.44944");//您的邮箱密码   
	        
	      // 创建邮件发送者和接受者的地址   
	      mailInfo.setFromAddress("stzengzhiwei@163.com");   
	      mailInfo.setToAddress(sendto);  
	        
	      //设置主题和内容  
	      mailInfo.setSubject("测试标题："+title);   
	      mailInfo.setContent("测试内容："+content);   
	        
	      //发送邮件  
	      SimpleMailSender sms = new SimpleMailSender();  
	      int i=0 ;  
	         while(sms.sendTextMail(mailInfo))//发送文体格式   
	         {     
	             System.out.println("发送第"+(i+1)+"封邮件成功！") ;  
	             new Thread().sleep(1) ;  
	             i++ ;  
	             if(i>=1) break ;  
	         }  
	         //sms.sendHtmlMail(mailInfo);//发送html格式  
	   
	         this.addActionMessage("添加成功!");
	        
	     //this.getResponse().getWriter().write(JSON.toJSONString("success"));
	     return "tz";
	
    }


    public String getSendto() {
        return sendto;
    }


    public void setSendto(String sendto) {
        this.sendto = sendto;
    }


    public String getTitle() {
        return title;
    }


    public void setTitle(String title) {
        this.title = title;
    }


    public String getContent() {
        return content;
    }


    public void setContent(String content) {
        this.content = content;
    }


   

}
