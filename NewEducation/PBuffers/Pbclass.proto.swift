/// Generated by the Protocol Buffers 3.5.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 4.0.0
/// Source file "PBClass.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct PbclassRoot {
    public static let `default` = PbclassRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class Pbclass : GeneratedMessage {
    public typealias BuilderType = Pbclass.Builder

    public static func == (lhs: Pbclass, rhs: Pbclass) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasId == rhs.hasId) && (!lhs.hasId || lhs.id == rhs.id)
        fieldCheck = fieldCheck && (lhs.hasClassName == rhs.hasClassName) && (!lhs.hasClassName || lhs.className == rhs.className)
        fieldCheck = fieldCheck && (lhs.hasGradeId == rhs.hasGradeId) && (!lhs.hasGradeId || lhs.gradeId == rhs.gradeId)
        fieldCheck = fieldCheck && (lhs.hasGradeName == rhs.hasGradeName) && (!lhs.hasGradeName || lhs.gradeName == rhs.gradeName)
        fieldCheck = fieldCheck && (lhs.hasMonitorUrl == rhs.hasMonitorUrl) && (!lhs.hasMonitorUrl || lhs.monitorUrl == rhs.monitorUrl)
        fieldCheck = fieldCheck && (lhs.hasYear == rhs.hasYear) && (!lhs.hasYear || lhs.year == rhs.year)
        fieldCheck = fieldCheck && (lhs.hasSemester == rhs.hasSemester) && (!lhs.hasSemester || lhs.semester == rhs.semester)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }

    ///班级ID
    public fileprivate(set) var id:Int64! = nil
    public fileprivate(set) var hasId:Bool = false

    ///班级名称
    public fileprivate(set) var className:String! = nil
    public fileprivate(set) var hasClassName:Bool = false

    ///年级ID
    public fileprivate(set) var gradeId:Int64! = nil
    public fileprivate(set) var hasGradeId:Bool = false

    ///年级名称
    public fileprivate(set) var gradeName:String! = nil
    public fileprivate(set) var hasGradeName:Bool = false

    ///监控地址
    public fileprivate(set) var monitorUrl:String! = nil
    public fileprivate(set) var hasMonitorUrl:Bool = false

    ///年
    public fileprivate(set) var year:Int64! = nil
    public fileprivate(set) var hasYear:Bool = false

    ///学期
    public fileprivate(set) var semester:Int32! = nil
    public fileprivate(set) var hasSemester:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() throws {
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasId {
            try codedOutputStream.writeInt64(fieldNumber: 1, value:id)
        }
        if hasClassName {
            try codedOutputStream.writeString(fieldNumber: 2, value:className)
        }
        if hasGradeId {
            try codedOutputStream.writeInt64(fieldNumber: 3, value:gradeId)
        }
        if hasGradeName {
            try codedOutputStream.writeString(fieldNumber: 4, value:gradeName)
        }
        if hasMonitorUrl {
            try codedOutputStream.writeString(fieldNumber: 5, value:monitorUrl)
        }
        if hasYear {
            try codedOutputStream.writeInt64(fieldNumber: 6, value:year)
        }
        if hasSemester {
            try codedOutputStream.writeInt32(fieldNumber: 7, value:semester)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasId {
            serialize_size += id.computeInt64Size(fieldNumber: 1)
        }
        if hasClassName {
            serialize_size += className.computeStringSize(fieldNumber: 2)
        }
        if hasGradeId {
            serialize_size += gradeId.computeInt64Size(fieldNumber: 3)
        }
        if hasGradeName {
            serialize_size += gradeName.computeStringSize(fieldNumber: 4)
        }
        if hasMonitorUrl {
            serialize_size += monitorUrl.computeStringSize(fieldNumber: 5)
        }
        if hasYear {
            serialize_size += year.computeInt64Size(fieldNumber: 6)
        }
        if hasSemester {
            serialize_size += semester.computeInt32Size(fieldNumber: 7)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> Pbclass.Builder {
        return Pbclass.classBuilder() as! Pbclass.Builder
    }
    public func getBuilder() -> Pbclass.Builder {
        return classBuilder() as! Pbclass.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Pbclass.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Pbclass.Builder()
    }
    public func toBuilder() throws -> Pbclass.Builder {
        return try Pbclass.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Pbclass) throws -> Pbclass.Builder {
        return try Pbclass.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        try isInitialized()
        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasId {
            jsonMap["id"] = "\(id!)"
        }
        if hasClassName {
            jsonMap["className"] = className
        }
        if hasGradeId {
            jsonMap["gradeId"] = "\(gradeId!)"
        }
        if hasGradeName {
            jsonMap["gradeName"] = gradeName
        }
        if hasMonitorUrl {
            jsonMap["monitorUrl"] = monitorUrl
        }
        if hasYear {
            jsonMap["year"] = "\(year!)"
        }
        if hasSemester {
            jsonMap["semester"] = Int(semester)
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Pbclass {
        return try Pbclass.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Pbclass {
        return try Pbclass.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasId {
            output += "\(indent) id: \(id) \n"
        }
        if hasClassName {
            output += "\(indent) className: \(className) \n"
        }
        if hasGradeId {
            output += "\(indent) gradeId: \(gradeId) \n"
        }
        if hasGradeName {
            output += "\(indent) gradeName: \(gradeName) \n"
        }
        if hasMonitorUrl {
            output += "\(indent) monitorUrl: \(monitorUrl) \n"
        }
        if hasYear {
            output += "\(indent) year: \(year) \n"
        }
        if hasSemester {
            output += "\(indent) semester: \(semester) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasId {
                hashCode = (hashCode &* 31) &+ id.hashValue
            }
            if hasClassName {
                hashCode = (hashCode &* 31) &+ className.hashValue
            }
            if hasGradeId {
                hashCode = (hashCode &* 31) &+ gradeId.hashValue
            }
            if hasGradeName {
                hashCode = (hashCode &* 31) &+ gradeName.hashValue
            }
            if hasMonitorUrl {
                hashCode = (hashCode &* 31) &+ monitorUrl.hashValue
            }
            if hasYear {
                hashCode = (hashCode &* 31) &+ year.hashValue
            }
            if hasSemester {
                hashCode = (hashCode &* 31) &+ semester.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pbclass"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
        fileprivate var builderResult:Pbclass = Pbclass()
        public func getMessage() -> Pbclass {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        ///班级ID
        public var id:Int64 {
            get {
                return builderResult.id
            }
            set (value) {
                builderResult.hasId = true
                builderResult.id = value
            }
        }
        public var hasId:Bool {
            get {
                return builderResult.hasId
            }
        }
        @discardableResult
        public func setId(_ value:Int64) -> Pbclass.Builder {
            self.id = value
            return self
        }
        @discardableResult
        public func clearId() -> Pbclass.Builder{
            builderResult.hasId = false
            builderResult.id = nil
            return self
        }
        ///班级名称
        public var className:String {
            get {
                return builderResult.className
            }
            set (value) {
                builderResult.hasClassName = true
                builderResult.className = value
            }
        }
        public var hasClassName:Bool {
            get {
                return builderResult.hasClassName
            }
        }
        @discardableResult
        public func setClassName(_ value:String) -> Pbclass.Builder {
            self.className = value
            return self
        }
        @discardableResult
        public func clearClassName() -> Pbclass.Builder{
            builderResult.hasClassName = false
            builderResult.className = nil
            return self
        }
        ///年级ID
        public var gradeId:Int64 {
            get {
                return builderResult.gradeId
            }
            set (value) {
                builderResult.hasGradeId = true
                builderResult.gradeId = value
            }
        }
        public var hasGradeId:Bool {
            get {
                return builderResult.hasGradeId
            }
        }
        @discardableResult
        public func setGradeId(_ value:Int64) -> Pbclass.Builder {
            self.gradeId = value
            return self
        }
        @discardableResult
        public func clearGradeId() -> Pbclass.Builder{
            builderResult.hasGradeId = false
            builderResult.gradeId = nil
            return self
        }
        ///年级名称
        public var gradeName:String {
            get {
                return builderResult.gradeName
            }
            set (value) {
                builderResult.hasGradeName = true
                builderResult.gradeName = value
            }
        }
        public var hasGradeName:Bool {
            get {
                return builderResult.hasGradeName
            }
        }
        @discardableResult
        public func setGradeName(_ value:String) -> Pbclass.Builder {
            self.gradeName = value
            return self
        }
        @discardableResult
        public func clearGradeName() -> Pbclass.Builder{
            builderResult.hasGradeName = false
            builderResult.gradeName = nil
            return self
        }
        ///监控地址
        public var monitorUrl:String {
            get {
                return builderResult.monitorUrl
            }
            set (value) {
                builderResult.hasMonitorUrl = true
                builderResult.monitorUrl = value
            }
        }
        public var hasMonitorUrl:Bool {
            get {
                return builderResult.hasMonitorUrl
            }
        }
        @discardableResult
        public func setMonitorUrl(_ value:String) -> Pbclass.Builder {
            self.monitorUrl = value
            return self
        }
        @discardableResult
        public func clearMonitorUrl() -> Pbclass.Builder{
            builderResult.hasMonitorUrl = false
            builderResult.monitorUrl = nil
            return self
        }
        ///年
        public var year:Int64 {
            get {
                return builderResult.year
            }
            set (value) {
                builderResult.hasYear = true
                builderResult.year = value
            }
        }
        public var hasYear:Bool {
            get {
                return builderResult.hasYear
            }
        }
        @discardableResult
        public func setYear(_ value:Int64) -> Pbclass.Builder {
            self.year = value
            return self
        }
        @discardableResult
        public func clearYear() -> Pbclass.Builder{
            builderResult.hasYear = false
            builderResult.year = nil
            return self
        }
        ///学期
        public var semester:Int32 {
            get {
                return builderResult.semester
            }
            set (value) {
                builderResult.hasSemester = true
                builderResult.semester = value
            }
        }
        public var hasSemester:Bool {
            get {
                return builderResult.hasSemester
            }
        }
        @discardableResult
        public func setSemester(_ value:Int32) -> Pbclass.Builder {
            self.semester = value
            return self
        }
        @discardableResult
        public func clearSemester() -> Pbclass.Builder{
            builderResult.hasSemester = false
            builderResult.semester = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> Pbclass.Builder {
            builderResult = Pbclass()
            return self
        }
        override public func clone() throws -> Pbclass.Builder {
            return try Pbclass.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> Pbclass {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> Pbclass {
            let returnMe:Pbclass = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:Pbclass) throws -> Pbclass.Builder {
            if other == Pbclass() {
                return self
            }
            if other.hasId {
                id = other.id
            }
            if other.hasClassName {
                className = other.className
            }
            if other.hasGradeId {
                gradeId = other.gradeId
            }
            if other.hasGradeName {
                gradeName = other.gradeName
            }
            if other.hasMonitorUrl {
                monitorUrl = other.monitorUrl
            }
            if other.hasYear {
                year = other.year
            }
            if other.hasSemester {
                semester = other.semester
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Pbclass.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pbclass.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 8:
                    id = try codedInputStream.readInt64()

                case 18:
                    className = try codedInputStream.readString()

                case 24:
                    gradeId = try codedInputStream.readInt64()

                case 34:
                    gradeName = try codedInputStream.readString()

                case 42:
                    monitorUrl = try codedInputStream.readString()

                case 48:
                    year = try codedInputStream.readInt64()

                case 56:
                    semester = try codedInputStream.readInt32()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Pbclass.Builder {
            let resultDecodedBuilder = Pbclass.Builder()
            if let jsonValueId = jsonMap["id"] as? String {
                resultDecodedBuilder.id = Int64(jsonValueId)!
            } else if let jsonValueId = jsonMap["id"] as? Int {
                resultDecodedBuilder.id = Int64(jsonValueId)
            }
            if let jsonValueClassName = jsonMap["className"] as? String {
                resultDecodedBuilder.className = jsonValueClassName
            }
            if let jsonValueGradeId = jsonMap["gradeId"] as? String {
                resultDecodedBuilder.gradeId = Int64(jsonValueGradeId)!
            } else if let jsonValueGradeId = jsonMap["gradeId"] as? Int {
                resultDecodedBuilder.gradeId = Int64(jsonValueGradeId)
            }
            if let jsonValueGradeName = jsonMap["gradeName"] as? String {
                resultDecodedBuilder.gradeName = jsonValueGradeName
            }
            if let jsonValueMonitorUrl = jsonMap["monitorUrl"] as? String {
                resultDecodedBuilder.monitorUrl = jsonValueMonitorUrl
            }
            if let jsonValueYear = jsonMap["year"] as? String {
                resultDecodedBuilder.year = Int64(jsonValueYear)!
            } else if let jsonValueYear = jsonMap["year"] as? Int {
                resultDecodedBuilder.year = Int64(jsonValueYear)
            }
            if let jsonValueSemester = jsonMap["semester"] as? Int {
                resultDecodedBuilder.semester = Int32(jsonValueSemester)
            } else if let jsonValueSemester = jsonMap["semester"] as? String {
                resultDecodedBuilder.semester = Int32(jsonValueSemester)!
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> Pbclass.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try Pbclass.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension Pbclass: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Pbclass> {
        var mergedArray = Array<Pbclass>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Pbclass? {
        return try Pbclass.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Pbclass {
        return try Pbclass.Builder().mergeFrom(data: data, extensionRegistry:PbclassRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Pbclass {
        return try Pbclass.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Pbclass {
        return try Pbclass.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Pbclass {
        return try Pbclass.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Pbclass {
        return try Pbclass.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pbclass {
        return try Pbclass.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "id": return self.id
        case "className": return self.className
        case "gradeId": return self.gradeId
        case "gradeName": return self.gradeName
        case "monitorUrl": return self.monitorUrl
        case "year": return self.year
        case "semester": return self.semester
        default: return nil
        }
    }
}
extension Pbclass.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Pbclass
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "id": return self.id
            case "className": return self.className
            case "gradeId": return self.gradeId
            case "gradeName": return self.gradeName
            case "monitorUrl": return self.monitorUrl
            case "year": return self.year
            case "semester": return self.semester
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "id":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.id = newSubscriptValue
            case "className":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.className = newSubscriptValue
            case "gradeId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.gradeId = newSubscriptValue
            case "gradeName":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.gradeName = newSubscriptValue
            case "monitorUrl":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.monitorUrl = newSubscriptValue
            case "year":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.year = newSubscriptValue
            case "semester":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.semester = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
