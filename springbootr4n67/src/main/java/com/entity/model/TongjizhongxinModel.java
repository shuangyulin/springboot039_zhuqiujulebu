package com.entity.model;

import com.entity.TongjizhongxinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 统计中心
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-04-14 06:54:13
 */
public class TongjizhongxinModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 统计数量
	 */
	
	private Integer tongjishuliang;
				
	
	/**
	 * 设置：统计数量
	 */
	 
	public void setTongjishuliang(Integer tongjishuliang) {
		this.tongjishuliang = tongjishuliang;
	}
	
	/**
	 * 获取：统计数量
	 */
	public Integer getTongjishuliang() {
		return tongjishuliang;
	}
			
}
