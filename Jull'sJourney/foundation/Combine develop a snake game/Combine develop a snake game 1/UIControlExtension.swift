//
//  UIControlExtension.swift
//  Combine develop a snake game 1
//
//  Created by Julio Pramaitama on 07/10/24.
//

import UIKit
import Combine

private extension UIControl
{
    class EventSubscription<Target: Subscriber>: Subscription where Target.Input == Void
    {
        var target: Target?
        
        func request(_ demand: Subscribers.Demand) {}
        
        func cancel() {
            target = nil
        }
        
        @objc func trigger()
        {
            _ = target?.receive(())
        }
    }
}

extension UIControl
{
    struct EventPublisher: Publisher
    {
        typealias Output = Void
        typealias Failure = Never
        
        fileprivate var control: UIControl
        fileprivate var event: Event
        
        func receive<S: Subscriber>(
            subscriber: S
        ) where S.Input == Output, S.Failure == Failure
        {
            let subscription = EventSubscription<S>()
            subscription.target = subscriber
            
            subscriber.receive(subscription: subscription)
            
            control.addTarget(subscription, action: #selector(subscription.trigger), for: event)
        }
    }
}
extension UIControl
{
    func publisher(for event: Event) -> EventPublisher
    {
        EventPublisher ( control: self, event: event )
    }
}
