// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ProposalContract{


    struct Proposal{
        string description;          // Teklifin açıklaması
        uint256 approve;             // Onaylama oyu sayısı
        uint256 reject;              // Reddetme oyu sayısı
        uint256 pass;                // Çekimser oyu sayısı
        uint256 total_vote_to_end;   // Teklifteki toplam oy bu sınıra ulaştığında teklif sona erer
        bool current_state;          // Teklifin mevcut durumunu gösterir (geçip geçmediğini)
        bool is_active;              // Başkalarının sözleşmemize oy verip veremeyeceğini gösterir
    }

    mapping(uint256 => Proposal) proposal_history; // Önceki tekliflerin kayıtları

    
}