<wsdl:definitions
	xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/"
	xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"
	xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
	xmlns:tns="http://tempuri.org/"
	xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
	xmlns:s="http://www.w3.org/2001/XMLSchema"
	xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
	xmlns:http="http://schemas.xmlsoap.org/wsdl/http/"
	xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" targetNamespace="http://tempuri.org/">
	<wsdl:types>
		<s:schema elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
			<s:element name="ConvertILSToUSD">
				<s:complexType>
					<s:sequence>
						<s:element minOccurs="1" maxOccurs="1" name="amount" type="s:double"/>
					</s:sequence>
				</s:complexType>
			</s:element>
			<s:element name="ConvertILSToUSDResponse">
				<s:complexType>
					<s:sequence>
						<s:element minOccurs="1" maxOccurs="1" name="ConvertILSToUSDResult" type="s:double"/>
					</s:sequence>
				</s:complexType>
			</s:element>
		</s:schema>
	</wsdl:types>
	<wsdl:message name="ConvertILSToUSDSoapIn">
		<wsdl:part name="parameters" element="tns:ConvertILSToUSD"/>
	</wsdl:message>
	<wsdl:message name="ConvertILSToUSDSoapOut">
		<wsdl:part name="parameters" element="tns:ConvertILSToUSDResponse"/>
	</wsdl:message>
	<wsdl:portType name="XenonConvertorSoap">
		<wsdl:operation name="ConvertILSToUSD">
			<wsdl:input message="tns:ConvertILSToUSDSoapIn"/>
			<wsdl:output message="tns:ConvertILSToUSDSoapOut"/>
		</wsdl:operation>
	</wsdl:portType>
	<wsdl:binding name="XenonConvertorSoap" type="tns:XenonConvertorSoap">
		<soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
		<wsdl:operation name="ConvertILSToUSD">
			<soap:operation soapAction="http://tempuri.org/ConvertILSToUSD" style="document"/>
			<wsdl:input>
				<soap:body use="literal"/>
			</wsdl:input>
			<wsdl:output>
				<soap:body use="literal"/>
			</wsdl:output>
		</wsdl:operation>
	</wsdl:binding>
	<wsdl:binding name="XenonConvertorSoap12" type="tns:XenonConvertorSoap">
		<soap12:binding transport="http://schemas.xmlsoap.org/soap/http"/>
		<wsdl:operation name="ConvertILSToUSD">
			<soap12:operation soapAction="http://tempuri.org/ConvertILSToUSD" style="document"/>
			<wsdl:input>
				<soap12:body use="literal"/>
			</wsdl:input>
			<wsdl:output>
				<soap12:body use="literal"/>
			</wsdl:output>
		</wsdl:operation>
	</wsdl:binding>
	<wsdl:service name="XenonConvertor">
		<wsdl:port name="XenonConvertorSoap" binding="tns:XenonConvertorSoap">
			<soap:address location="http://localhost:26175/XenonConvertor.asmx"/>
		</wsdl:port>
		<wsdl:port name="XenonConvertorSoap12" binding="tns:XenonConvertorSoap12">
			<soap12:address location="http://localhost:26175/XenonConvertor.asmx"/>
		</wsdl:port>
	</wsdl:service>
</wsdl:definitions>
