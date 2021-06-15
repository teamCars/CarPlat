package com.igeek.common.utils;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.Region;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

import java.io.InputStream;

/**
 * @version 1.0
 * @Description 将图片上传到七牛云上的工具类
 * @Author sunziwei
 * @Date 2021/6/9 23:26
 *
 * 使用方法:
 * Part img = request.getPart("img");
 * qiniuUtils.uploadStream(img.getInputStream());
 */
public class QiniuUtils {
    //构造一个带指定 Region 对象的配置类
    Configuration cfg = new Configuration(Region.region2());
    //...其他参数参考类注释

    UploadManager uploadManager = new UploadManager(cfg);
    //...生成上传凭证，然后准备上传
    String accessKey = "jmWVBObwMWiJ_VZnEGt-m-w0wFOdE1LAYDTbpJLs";
    String secretKey = "ziDxz7c9Vmi5A0UGGIOKhKPSoUGWES5vngPqucY8";
    String bucket = "carplat";

    //默认不指定key的情况下，以文件内容的hash值作为文件名
    String key = null;

    Auth auth = Auth.create(accessKey, secretKey);
    String upToken = auth.uploadToken(bucket);


    public String uploadStream(InputStream is){

        //     byte[] uploadBytes = "hello qiniu cloud".getBytes("utf-8");
        //    ByteArrayInputStream byteInputStream=new ByteArrayInputStream(uploadBytes);

        try {
            Response response = uploadManager.put(is,key,upToken,null, null);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            System.out.println(putRet.key);
            System.out.println(putRet.hash);
            return putRet.key;
        } catch (QiniuException ex) {
            Response r = ex.response;
            System.err.println(r.toString());
            try {
                System.err.println(r.bodyString());
            } catch (QiniuException ex2) {
                //ignore
            }
        }
        return null;

    }

}
