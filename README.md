# AutoCorrection [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-04.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-04)
If you decided you want to give our autocorrection for Squeak a try, you can install it by executing the following code in your image:

```
Metacello new
  baseline: 'AutoCorrection';
  repository: 'github://hpi-swa-teaching/SWT18-Project-04:%commitYouWantToLoad%/packages';
  load.
```
Example for release v0.4:

```
Metacello new
  baseline: 'AutoCorrection';
  repository: 'github://hpi-swa-teaching/SWT18-Project-04:v0.4/packages';
  load.
```

After loading our project you have the ability to turn the autocorrection on/off in your preferences browser.
