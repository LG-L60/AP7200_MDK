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

package org.bouncycastle.x509;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.security.auth.x500.X500Principal;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.RSASSAPSSparams;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.util.Strings;

class X509Util
{
    private static Hashtable algorithms = new Hashtable();
    private static Hashtable params = new Hashtable();
    private static Set       noParams = new HashSet();
    
    static
    {   
        // BEGIN android-removed
        // algorithms.put("MD2WITHRSAENCRYPTION", PKCSObjectIdentifiers.md2WithRSAEncryption);
        // algorithms.put("MD2WITHRSA", PKCSObjectIdentifiers.md2WithRSAEncryption);
        // END android-removed
        algorithms.put("MD5WITHRSAENCRYPTION", PKCSObjectIdentifiers.md5WithRSAEncryption);
        algorithms.put("MD5WITHRSA", PKCSObjectIdentifiers.md5WithRSAEncryption);
        algorithms.put("SHA1WITHRSAENCRYPTION", PKCSObjectIdentifiers.sha1WithRSAEncryption);
        algorithms.put("SHA1WITHRSA", PKCSObjectIdentifiers.sha1WithRSAEncryption);
        // BEGIN android-removed
        // algorithms.put("SHA224WITHRSAENCRYPTION", PKCSObjectIdentifiers.sha224WithRSAEncryption);
        // algorithms.put("SHA224WITHRSA", PKCSObjectIdentifiers.sha224WithRSAEncryption);
        // END android-removed
        algorithms.put("SHA256WITHRSAENCRYPTION", PKCSObjectIdentifiers.sha256WithRSAEncryption);
        algorithms.put("SHA256WITHRSA", PKCSObjectIdentifiers.sha256WithRSAEncryption);
        algorithms.put("SHA384WITHRSAENCRYPTION", PKCSObjectIdentifiers.sha384WithRSAEncryption);
        algorithms.put("SHA384WITHRSA", PKCSObjectIdentifiers.sha384WithRSAEncryption);
        algorithms.put("SHA512WITHRSAENCRYPTION", PKCSObjectIdentifiers.sha512WithRSAEncryption);
        algorithms.put("SHA512WITHRSA", PKCSObjectIdentifiers.sha512WithRSAEncryption);
        algorithms.put("SHA1WITHRSAANDMGF1", PKCSObjectIdentifiers.id_RSASSA_PSS);
        // BEGIN android-removed
        // algorithms.put("SHA224WITHRSAANDMGF1", PKCSObjectIdentifiers.id_RSASSA_PSS);
        // END android-removed
        algorithms.put("SHA256WITHRSAANDMGF1", PKCSObjectIdentifiers.id_RSASSA_PSS);
        algorithms.put("SHA384WITHRSAANDMGF1", PKCSObjectIdentifiers.id_RSASSA_PSS);
        algorithms.put("SHA512WITHRSAANDMGF1", PKCSObjectIdentifiers.id_RSASSA_PSS);
        // BEGIN android-removed
        // algorithms.put("RIPEMD160WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.rsaSignatureWithripemd160);
        // algorithms.put("RIPEMD160WITHRSA", TeleTrusTObjectIdentifiers.rsaSignatureWithripemd160);
        // algorithms.put("RIPEMD128WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.rsaSignatureWithripemd128);
        // algorithms.put("RIPEMD128WITHRSA", TeleTrusTObjectIdentifiers.rsaSignatureWithripemd128);
        // algorithms.put("RIPEMD256WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.rsaSignatureWithripemd256);
        // algorithms.put("RIPEMD256WITHRSA", TeleTrusTObjectIdentifiers.rsaSignatureWithripemd256);
        // END android-removed
        algorithms.put("SHA1WITHDSA", X9ObjectIdentifiers.id_dsa_with_sha1);
        algorithms.put("DSAWITHSHA1", X9ObjectIdentifiers.id_dsa_with_sha1);
        // BEGIN android-removed
        // algorithms.put("SHA224WITHDSA", NISTObjectIdentifiers.dsa_with_sha224);
        // END android-removed
        algorithms.put("SHA256WITHDSA", NISTObjectIdentifiers.dsa_with_sha256);
        algorithms.put("SHA384WITHDSA", NISTObjectIdentifiers.dsa_with_sha384);
        algorithms.put("SHA512WITHDSA", NISTObjectIdentifiers.dsa_with_sha512);
        algorithms.put("SHA1WITHECDSA", X9ObjectIdentifiers.ecdsa_with_SHA1);
        algorithms.put("ECDSAWITHSHA1", X9ObjectIdentifiers.ecdsa_with_SHA1);
        // BEGIN android-removed
        // algorithms.put("SHA224WITHECDSA", X9ObjectIdentifiers.ecdsa_with_SHA224);
        // END android-removed
        algorithms.put("SHA256WITHECDSA", X9ObjectIdentifiers.ecdsa_with_SHA256);
        algorithms.put("SHA384WITHECDSA", X9ObjectIdentifiers.ecdsa_with_SHA384);
        algorithms.put("SHA512WITHECDSA", X9ObjectIdentifiers.ecdsa_with_SHA512);
        // BEGIN android-removed
        // algorithms.put("GOST3411WITHGOST3410", CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_94);
        // algorithms.put("GOST3411WITHGOST3410-94", CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_94);
        // algorithms.put("GOST3411WITHECGOST3410", CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_2001);
        // algorithms.put("GOST3411WITHECGOST3410-2001", CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_2001);
        // algorithms.put("GOST3411WITHGOST3410-2001", CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_2001);
        // END android-removed

        //
        // According to RFC 3279, the ASN.1 encoding SHALL (id-dsa-with-sha1) or MUST (ecdsa-with-SHA*) omit the parameters field. 
        // The parameters field SHALL be NULL for RSA based signature algorithms.
        //
        noParams.add(X9ObjectIdentifiers.ecdsa_with_SHA1);
        // BEGIN android-removed
        // noParams.add(X9ObjectIdentifiers.ecdsa_with_SHA224);
        // END android-removed
        noParams.add(X9ObjectIdentifiers.ecdsa_with_SHA256);
        noParams.add(X9ObjectIdentifiers.ecdsa_with_SHA384);
        noParams.add(X9ObjectIdentifiers.ecdsa_with_SHA512);
        noParams.add(X9ObjectIdentifiers.id_dsa_with_sha1);
        // BEGIN android-removed
        // noParams.add(NISTObjectIdentifiers.dsa_with_sha224);
        // END android-removed
        noParams.add(NISTObjectIdentifiers.dsa_with_sha256);
        noParams.add(NISTObjectIdentifiers.dsa_with_sha384);
        noParams.add(NISTObjectIdentifiers.dsa_with_sha512);
        
        //
        // RFC 4491
        //
        // BEGIN android-removed
        // noParams.add(CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_94);
        // noParams.add(CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_2001);
        // END android-removed

        //
        // explicit params
        //
        // BEGIN android-changed
        AlgorithmIdentifier sha1AlgId = new AlgorithmIdentifier(OIWObjectIdentifiers.idSHA1, DERNull.INSTANCE);
        // END android-changed
        params.put("SHA1WITHRSAANDMGF1", creatPSSParams(sha1AlgId, 20));

        // BEGIN android-removed
        // // BEGIN android-changed
        // AlgorithmIdentifier sha224AlgId = new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha224, DERNull.INSTANCE);
        // // END android-changed
        // params.put("SHA224WITHRSAANDMGF1", creatPSSParams(sha224AlgId, 28));
        // END android-removed

        // BEGIN android-changed
        AlgorithmIdentifier sha256AlgId = new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha256, DERNull.INSTANCE);
        // END android-changed
        params.put("SHA256WITHRSAANDMGF1", creatPSSParams(sha256AlgId, 32));

        // BEGIN android-changed
        AlgorithmIdentifier sha384AlgId = new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha384, DERNull.INSTANCE);
        // END android-changed
        params.put("SHA384WITHRSAANDMGF1", creatPSSParams(sha384AlgId, 48));

        // BEGIN android-changed
        AlgorithmIdentifier sha512AlgId = new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha512, DERNull.INSTANCE);
        // END android-changed
        params.put("SHA512WITHRSAANDMGF1", creatPSSParams(sha512AlgId, 64));
    }

    private static RSASSAPSSparams creatPSSParams(AlgorithmIdentifier hashAlgId, int saltSize)
    {
        return new RSASSAPSSparams(
            hashAlgId,
            new AlgorithmIdentifier(PKCSObjectIdentifiers.id_mgf1, hashAlgId),
            new DERInteger(saltSize),
            new DERInteger(1));
    }

    static DERObjectIdentifier getAlgorithmOID(
        String algorithmName)
    {
        algorithmName = Strings.toUpperCase(algorithmName);
        
        if (algorithms.containsKey(algorithmName))
        {
            return (DERObjectIdentifier)algorithms.get(algorithmName);
        }
        
        return new DERObjectIdentifier(algorithmName);
    }
    
    static AlgorithmIdentifier getSigAlgID(
        DERObjectIdentifier sigOid,
        String              algorithmName)
    {
        if (noParams.contains(sigOid))
        {
            return new AlgorithmIdentifier(sigOid);
        }

        algorithmName = Strings.toUpperCase(algorithmName);

        if (params.containsKey(algorithmName))
        {
            return new AlgorithmIdentifier(sigOid, (DEREncodable)params.get(algorithmName));
        }
        else
        {
            // BEGIN android-changed
            return new AlgorithmIdentifier(sigOid, DERNull.INSTANCE);
            // END android-changed
        }
    }
    
    static Iterator getAlgNames()
    {
        Enumeration e = algorithms.keys();
        List        l = new ArrayList();
        
        while (e.hasMoreElements())
        {
            l.add(e.nextElement());
        }
        
        return l.iterator();
    }

    static Signature getSignatureInstance(
        String algorithm)
        throws NoSuchAlgorithmException
    {
        return Signature.getInstance(algorithm);
    }

    static Signature getSignatureInstance(
        String algorithm,
        String provider)
        throws NoSuchProviderException, NoSuchAlgorithmException
    {
        if (provider != null)
        {
            return Signature.getInstance(algorithm, provider);
        }
        else
        {
            return Signature.getInstance(algorithm);
        }
    }

    static byte[] calculateSignature(
        DERObjectIdentifier sigOid,
        String              sigName,
        PrivateKey          key,
        SecureRandom        random,
        ASN1Encodable       object)
        throws IOException, NoSuchAlgorithmException, InvalidKeyException, SignatureException
    {
        Signature sig;

        if (sigOid == null)
        {
            throw new IllegalStateException("no signature algorithm specified");
        }

        sig = X509Util.getSignatureInstance(sigName);

        if (random != null)
        {
            sig.initSign(key, random);
        }
        else
        {
            sig.initSign(key);
        }

        sig.update(object.getEncoded(ASN1Encodable.DER));

        return sig.sign();
    }

    static byte[] calculateSignature(
        DERObjectIdentifier sigOid,
        String              sigName,
        String              provider,
        PrivateKey          key,
        SecureRandom        random,
        ASN1Encodable       object)
        throws IOException, NoSuchProviderException, NoSuchAlgorithmException, InvalidKeyException, SignatureException
    {
        Signature sig;

        if (sigOid == null)
        {
            throw new IllegalStateException("no signature algorithm specified");
        }

        sig = X509Util.getSignatureInstance(sigName, provider);

        if (random != null)
        {
            sig.initSign(key, random);
        }
        else
        {
            sig.initSign(key);
        }

        sig.update(object.getEncoded(ASN1Encodable.DER));

        return sig.sign();
    }

    static X509Principal convertPrincipal(
        X500Principal principal)
    {
        try
        {
            return new X509Principal(principal.getEncoded());
        }
        catch (IOException e)
        {
            throw new IllegalArgumentException("cannot convert principal");
        }
    }

    static class Implementation
    {
        Object      engine;
        Provider provider;

        Implementation(
            Object      engine,
            Provider    provider)
        {
            this.engine = engine;
            this.provider = provider;
        }

        Object getEngine()
        {
            return engine;
        }

        Provider getProvider()
        {
            return provider;
        }
    }

    /**
     * see if we can find an algorithm (or its alias and what it represents) in
     * the property table for the given provider.
     */
    static Implementation getImplementation(
        String      baseName,
        String      algorithm,
        Provider    prov)
        throws NoSuchAlgorithmException
    {
        algorithm = Strings.toUpperCase(algorithm);

        String      alias;

        while ((alias = prov.getProperty("Alg.Alias." + baseName + "." + algorithm)) != null)
        {
            algorithm = alias;
        }

        String      className = prov.getProperty(baseName + "." + algorithm);

        if (className != null)
        {
            try
            {
                Class       cls;
                ClassLoader clsLoader = prov.getClass().getClassLoader();

                if (clsLoader != null)
                {
                    cls = clsLoader.loadClass(className);
                }
                else
                {
                    cls = Class.forName(className);
                }

                return new Implementation(cls.newInstance(), prov);
            }
            catch (ClassNotFoundException e)
            {
                throw new IllegalStateException(
                    "algorithm " + algorithm + " in provider " + prov.getName() + " but no class \"" + className + "\" found!");
            }
            catch (Exception e)
            {
                throw new IllegalStateException(
                    "algorithm " + algorithm + " in provider " + prov.getName() + " but class \"" + className + "\" inaccessible!");
            }
        }

        throw new NoSuchAlgorithmException("cannot find implementation " + algorithm + " for provider " + prov.getName());
    }

    /**
     * return an implementation for a given algorithm/provider.
     * If the provider is null, we grab the first avalaible who has the required algorithm.
     */
    static Implementation getImplementation(
        String      baseName,
        String      algorithm)
        throws NoSuchAlgorithmException
    {
        Provider[] prov = Security.getProviders();

        //
        // search every provider looking for the algorithm we want.
        //
        for (int i = 0; i != prov.length; i++)
        {
            //
            // try case insensitive
            //
            Implementation imp = getImplementation(baseName, Strings.toUpperCase(algorithm), prov[i]);
            if (imp != null)
            {
                return imp;
            }

            try
            {
                imp = getImplementation(baseName, algorithm, prov[i]);
            }
            catch (NoSuchAlgorithmException e)
            {
                // continue
            }
        }

        throw new NoSuchAlgorithmException("cannot find implementation " + algorithm);
    }

    static Provider getProvider(String provider)
        throws NoSuchProviderException
    {
        Provider prov = Security.getProvider(provider);

        if (prov == null)
        {
            throw new NoSuchProviderException("Provider " + provider + " not found");
        }

        return prov;
    }
}