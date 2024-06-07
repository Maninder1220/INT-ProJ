# LEARNING n UNDERSTANDING of AWS SNS

- WHAT IS SNS

AWS Simple Notification Service (SNS) is a fully managed messaging service provided by Amazon Web Services.
It enables the decoupling of microservices, distributed systems, and serverless applications by allowing you to send messages between components.

Amazon Simple Notification Service (Amazon SNS) is a managed service that provides message delivery
from publishers to subscribers (also known as producers and consumers).

Publishers communicate asynchronously with subscribers by sending messages to a topic, which is a logical access point and communication channel.

Clients can subscribe to the SNS topic and receive published messages using a supported endpoint type, such as 
- Amazon Data Firehose 
- Amazon SQS
- AWS Lambda 
- HTTP/S
- Email 
- Mobile Push Notifications and 
- Mobile Text Messages (SMS)


- FLOW OF SNS

  Publisher -> SNS TOPIC -> Subscriber

  - In This FLow SNS Topic receives the message and then distributes it to all subscriber
    that are subscribed to that topic.
  - Subscribers receive the message through their respective protocols
    EG -  HTTP/HTTPS, Email, SMS, Lambda function, SQS queue ...

# LERNING FORM YOUTUBE
> What is SNS?

- Message Publishing and Processing Service (PubSub)
- Allows Fanout to millions of consumer
- Fully managed and durable with automatic scaling
- Consist of `Topics` and `Subscription`
- Ways to use or Flavour
    - Application to Person
        - Single Topic to Many Subscriber
        - Direct Message to Specific Subscriber
    - Application to Application
        - It's Application to Application messaging
        

> Creating a Topic
 
- NAME
- ENCRYPTION - `IMP`
    - Can use ***Key Master Service*** for encryption
- ACCESS POLICIE - `IMP`
- DELIVERY RETRY POLICIES - `IMP`
- DELIVERY STATUS LOGGING
    - Log is generated
    

> Creating Subscription

- Subscription can be created independently
- SUBSCRIPTION FILTER POLICIES - `IMP`
    - It reduces cost
- RETRIEVE POLICY - `IMP`
    - Dead letter queue
    - You have to have SQS
