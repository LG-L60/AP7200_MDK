/* Copyright Statement:
 *
 * This software/firmware and related documentation ("MediaTek Software") are
 * protected under relevant copyright laws. The information contained herein is
 * confidential and proprietary to MediaTek Inc. and/or its licensors. Without
 * the prior written permission of MediaTek inc. and/or its licensors, any
 * reproduction, modification, use or disclosure of MediaTek Software, and
 * information contained herein, in whole or in part, shall be strictly
 * prohibited.
 * 
 * MediaTek Inc. (C) 2010. All rights reserved.
 * 
 * BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
 * THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
 * RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER
 * ON AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL
 * WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR
 * NONINFRINGEMENT. NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH
 * RESPECT TO THE SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY,
 * INCORPORATED IN, OR SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES
 * TO LOOK ONLY TO SUCH THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO.
 * RECEIVER EXPRESSLY ACKNOWLEDGES THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO
 * OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES CONTAINED IN MEDIATEK
 * SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK SOFTWARE
 * RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
 * STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S
 * ENTIRE AND CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE
 * RELEASED HEREUNDER WILL BE, AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE
 * MEDIATEK SOFTWARE AT ISSUE, OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE
 * CHARGE PAID BY RECEIVER TO MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
 *
 * The following software/firmware and/or related documentation ("MediaTek
 * Software") have been modified by MediaTek Inc. All revisions are subject to
 * any receiver's applicable license agreements with MediaTek Inc.
 */

/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package tests.support.resource;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import tests.support.Support_Configuration;

public class Support_Resources {

    public static final String RESOURCE_PACKAGE = "/tests/resources/";

    public static final String RESOURCE_PACKAGE_NAME = "tests.resources";

    public static InputStream getStream(String name) {
        String path = RESOURCE_PACKAGE + name;
        InputStream result = Support_Resources.class.getResourceAsStream(path);
        if (result == null) {
            throw new IllegalArgumentException("No such resource: " + path);
        }
        return result;
    }

    public static String getURL(String name) {
        String folder = null;
        String fileName = name;
        File resources = createTempFolder();
        int index = name.lastIndexOf("/");
        if (index != -1) {
            folder = name.substring(0, index);
            name = name.substring(index + 1);
        }
        copyFile(resources, folder, name);
        URL url = null;
        String resPath = resources.toString();
        if (resPath.charAt(0) == '/' || resPath.charAt(0) == '\\') {
            resPath = resPath.substring(1);
        }
        try {
            url = new URL("file:/" + resPath + "/" + fileName);
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return url.toString();
    }

    public static File createTempFolder() {

        File folder = null;
        try {
            folder = File.createTempFile("hyts_resources", "", null);
            folder.delete();
            folder.mkdirs();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        folder.deleteOnExit();
        return folder;
    }

    public static File copyFile(File root, String folder, String file) {
        File f;
        if (folder != null) {
            f = new File(root.toString() + "/" + folder);
            if (!f.exists()) {
                f.mkdirs();
                f.deleteOnExit();
            }
        } else {
            f = root;
        }

        File dest = new File(f.toString() + "/" + file);

        InputStream in = Support_Resources.getStream(folder == null ? file
                : folder + "/" + file);
        try {
            copyLocalFileto(dest, in);
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return dest;
    }

    public static File createTempFile(String suffix) throws IOException {
        return File.createTempFile("hyts_", suffix, null);
    }

    public static void copyLocalFileto(File dest, InputStream in) throws IOException {
        if (!dest.exists()) {
            FileOutputStream out = new FileOutputStream(dest);
            copy(in, out);
            out.close();
            dest.deleteOnExit();
        }
        in.close();
    }

    private static int copy(InputStream in, OutputStream out) throws IOException {
        int total = 0;
        byte[] buffer = new byte[8192];
        int c;
        while ((c = in.read(buffer)) != -1) {
            total += c;
            out.write(buffer, 0, c);
        }
        return total;
    }

    public static File getExternalLocalFile(String url) throws IOException {
        File resources = createTempFolder();
        InputStream in = new URL(url).openStream();
        File temp = new File(resources.toString() + "/local.tmp");
        copyLocalFileto(temp, in);
        return temp;
    }

    public static String getResourceURL(String resource) {
        return "http://" + Support_Configuration.TestResources + resource;
    }

    /**
     * Util method to load resource files
     *
     * @param name - name of resource file
     * @return - resource input stream
     */
    public static InputStream getResourceStream(String name) {
        InputStream is = Support_Resources.class.getResourceAsStream(name);

        if (is == null) {
            name = RESOURCE_PACKAGE + name;
            is = Support_Resources.class.getResourceAsStream(name);
            if (is == null) {
                throw new RuntimeException("Failed to load resource: " + name);
            }
        }

        return is;
    }

    public static File resourceToTempFile(String path) throws IOException {
        File f = File.createTempFile("out", ".xml");
        f.deleteOnExit();
        FileOutputStream out = new FileOutputStream(f);

        InputStream xml = Support_Resources.class.getResourceAsStream(path);
        int b;
        while ((b = xml.read()) != -1) {
            out.write(b);
        }
        out.flush();
        out.close();
        xml.close();
        return f;
    }
}
