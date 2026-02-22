// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract CertificateVerification {
    address public admin;
    constructor() {
        admin = msg.sender;
    }
    struct Certificate {
        string studentName;
        string course;
        string issuer;
        bool isValid;
    }
    mapping(string => Certificate) public certificates;
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can do this");
        _;
    }
    function addCertificate(
        string memory _certId,
        string memory _studentName,
        string memory _course,
        string memory _issuer
    ) public onlyAdmin {
        certificates[_certId] = Certificate(
            _studentName,
            _course,
            _issuer,
            true
        );
    }
    function verifyCertificate(
        string memory _certId
    ) public view returns (string memory, string memory, string memory, bool) {
        Certificate memory cert = certificates[_certId];
        return (cert.studentName, cert.course, cert.issuer, cert.isValid);
    }
}
