"
I am a simple port scanner.
"
Class {
	#name : #PortScanner,
	#superclass : #Object,
	#instVars : [
		'host'
	],
	#category : #PortScanner
}

{ #category : #initialization }
PortScanner >> initialize: aHost [
			
	self.host := aHost
]

{ #category : #initialization }
PortScanner >> scan: aPort [

	| c portOpen |
	c := ProtocolClient new.
	c openOnHostNamed: self.host port: aPort.
	c stream.
	portOpen := c isConnected.
	c close.
	^ portOpen
]
