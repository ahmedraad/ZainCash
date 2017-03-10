Zain Cash iOS
===================
----------
[![CocoaPods](https://img.shields.io/badge/Pod-1.0.3-1182C2.svg)]() [![Platform](https://img.shields.io/badge/Platform-iOS-989898.svg)]() [![Language](https://img.shields.io/badge/Language-Swift%203.0-orange.svg)]()

![enter image description here](http://i.imgur.com/YB9jgDo.jpg)

Usage
-------------
To run the project, clone the repo, and run pod install from the Example directory first.

Requirements
-----------
- Xcode 8
- Minimum deployment target is iOS 9.

Installation
-----------

```
pod 'ZainCash'
```
----------


Code Implementation
-------------------

```swift
import ZainCash
```
```swift
let payment = ZainCashPayment()

// Your Wallet secret key
payment.key = "secretsecretsecretsecretsecretsecretsecrets"

// Your merchant id
payment.merchant = "572487bca0a4d6f2688c1ee3"

// Product Ammout
payment.amount = 1000

// hours to expires | default is 4 hours
payment.expiresIn = 2

// Which type of Product
payment.serviceType = "AAA books website"

// Your phone number wallet
payment.msisdn = "9647911111111"

// User order id (optional)
payment.orderId = 1234

// Make transaction here
payment.makePayment { response, error in
// here JSON response of transaction (success or failure)
}

// transaction id, will get it after make payment
payment.transactionID = "42da42da42da42da42da42d"

// check transaction status here
payment.checkTransaction { response, error in
// here JSON response of transaction (success or failure)
}

```

----------

Coming Soon !
-------------------
- macOS Support
- tvOS Support
- Swift Server [ Vapor ]

