---
title: "Aws Https S3 Static Web"
date: 2019-04-30T22:09:12+02:00
tags: ["aws"]
categories: ["Web", "Tutorial"]
summary: "A short guide on how to enable HTTPS on a static webpage served in S3."
draft: false
---
This tutorial assumes you have followed the [previous](/blog/2019-04/personal-website-with-hugo) tutorial on how to setup a personal web site
with Hugo and host it in AWS S3.

First lets create a new certificate for the domain name. Navigate to the [ACM](https://console.aws.amazon.com/acm/home) service.
Request a new certificate for `*.yourdomain.com` and `yourdomain.com`. It will ask how you want to validate the ownership of the DN. Use DNS.
AWS asks whether you want to create a CNAME record automatically, say yes. Complete the process.

You should have a certificate now!

Now navigate to [CloudFront](https://console.aws.amazon.com/cloudfront/home) AWS service.
Create a distribution, select Web.
Choose your S3 bucket which is hosting the static website, 

![S3](/img/blog/2019-04/aws-https-s3-static-web/cloudfront1.png)

You can chose either to redirect HTTP to HTTPS or allow only HTTPS

![https only](/img/blog/2019-04/aws-https-s3-static-web/cloudfront2.png)

Finally select custom SSL certificate and choose the certification you created.

![certificate](/img/blog/2019-04/aws-https-s3-static-web/cloudfront3.png)

Leave the rest as default. Creating the distribution can take some time so be patient.
Eventually you should be able to access you website on HTTPS.

