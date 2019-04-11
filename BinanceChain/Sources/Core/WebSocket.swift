import Foundation
import Starscream

public class WebSocket {

    public enum Endpoint: String {
        case mainnet = "wss://dex.binance.org/api/ws"
        case testnet = "wss://testnet-dex.binance.org/api/ws"
    }

    private var socket: Starscream.WebSocket?

    public init() { }

    public func connect(endpoint: Endpoint = .testnet) {

        print("WebSocket CONNECT: \(endpoint.rawValue)")
        
        let socket = Starscream.WebSocket(url: URL(string: endpoint.rawValue)!)

        socket.onConnect = {
            print("websocket is connected")
        }

        /*
        socket.onDisconnect = { (error: Error?) in
            print("websocket is disconnected: \(error?.localizedDescription)")
        }
         */

        //websocketDidReceiveMessage
        socket.onText = { (text: String) in
            print("got some text: \(text)")
        }
        //websocketDidReceiveData
        socket.onData = { (data: Data) in
            print("got some data: \(data.count)")
        }

        socket.onPong = { (data: Data?) in
            //print("got pong: \(data?.count)")
        }

        self.socket = socket
        socket.connect()
        
    }

    // MARK: - Subscribe
    
    public func subscribe(topic: String) {

    }

    public func subscribe(orders address: String) {
        
    }

    public func subscribe(marketDepth symbols: [String]) {
        
    }
    
    public func subscribe(marketDelta symbols: [String]) {
        
    }
    
    public func subscribe(trades symbols: [String]) {
        
    }
    
    public func subscribe(ticker symbols: [String]) {
        
    }

    // MARK: - Unsubscribe
    
    public func unsubscribe(topic: String) {
        
    }

    public func unsubscribe(orders address: String) {
        
    }

    public func unsubscribe(marketDepth symbols: [String]) {
        
    }

    public func unsubscribe(marketDelta symbols: [String]) {
        
    }
    
    public func unsubscribe(trades symbols: [String]) {
        
    }
    
    public func unsubscribe(ticker symbols: [String]) {
        
    }
    
}