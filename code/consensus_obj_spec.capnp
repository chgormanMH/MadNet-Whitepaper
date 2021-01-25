using Go = import "/go.capnp";
@0x85d3acc39d94e0f8;
$Go.package("capn");
$Go.import("github.com/MadHive/MadNet/consenus/capn");

const defaultRound :UInt32 = 0;
const defaultHeight :UInt32 = 0;
const defaultChainID :UInt32 = 0;
const defaultNumberTransactions :UInt32 = 0;
const defaultRClaims :RClaims = (chainID = .defaultChainID,
    height = .defaultHeight, round = .defaultRound,
    prevBlock = 0x"00");
const defaultBClaims :BClaims = (chainID = .defaultChainID,
    height = .defaultHeight, prevBlock = 0x"00",
    txCount = .defaultNumberTransactions, txRoot = 0x"00",
    stateRoot = 0x"00", headerRoot = 0x"00");
const defaultRCert :RCert = (rClaims = .defaultRClaims,
    sigGroup = 0x"00");
const defaultPClaims :PClaims = (bClaims = .defaultBClaims,
    rCert = .defaultRCert);
const defaultNRClaims :NRClaims = (rCert = .defaultRCert,
    rClaims = .defaultRClaims, sigShare = 0x"00");
const defaultProposal :Proposal = (pClaims = .defaultPClaims,
    signature = 0x"00");
const defaultNHClaims :NHClaims = (proposal = .defaultProposal,
    sigShare = 0x"00");
const defaultPreVote :PreVote = (proposal = .defaultProposal,
    signature = 0x"00");
const defaultPreCommit :PreCommit = (proposal = .defaultProposal,
    signature = 0x"00", preVotes = 0x"00");
const defaultPreVoteNil :PreVoteNil = (rCert = .defaultRCert,
    signature = 0x"00");
const defaultPreCommitNil :PreCommitNil = (rCert = .defaultRCert,
    signature = 0x"00");
const defaultNextRound :NextRound = (nRClaims = .defaultNRClaims,
    signature = 0x"00");
const defaultNextHeight :NextHeight = (nHClaims = .defaultNHClaims,
    signature = 0x"00", preCommits = 0x"00");
const defaultBlockHeader :BlockHeader = (bClaims = .defaultBClaims,
    sigGroup = 0x"00", txHshLst = 0x"00");

struct RClaims {
    chainID @0 :UInt32 = .defaultChainID;
    height @1 :UInt32 = .defaultHeight;
    round @2 :UInt32 = .defaultRound;
    prevBlock @3 :Data = 0x"00";
}

struct RCert {
    rClaims @0 :RClaims = .defaultRClaims;
    sigGroup @1 :Data = 0x"00";
}

struct BClaims {
    chainID @0 :UInt32 = .defaultChainID;
    height @1 :UInt32 = .defaultHeight;
    prevBlock @2 :Data = 0x"00";
    txCount @3 :UInt32 = .defaultNumberTransactions;
    txRoot @4 :Data = 0x"00";
    stateRoot @5 :Data = 0x"00";
    headerRoot @6 :Data = 0x"00";
}

struct PClaims {
    bClaims @0 :BClaims = .defaultBClaims;
    rCert @1 :RCert = .defaultRCert;
}

struct Proposal {
    pClaims @0 :PClaims = .defaultPClaims;
    signature @1 :Data = 0x"00";
    txHshLst @2 :Data = 0x"00";
}

struct PreVote {
    proposal @0 :Proposal = .defaultProposal;
    signature @1 :Data = 0x"00";
}

struct PreVoteNil {
    rCert @0 :RCert = .defaultRCert;
    signature @1 :Data = 0x"00";
}

struct PreCommit {
    proposal @0 :Proposal = .defaultProposal;
    signature @1 :Data = 0x"00";
    preVotes @2 :Data = 0x"00";
}

struct PreCommitNil {
    rCert @0 :RCert = .defaultRCert;
    signature @1 :Data = 0x"00";
}

struct NRClaims {
    rCert @0 :RCert = .defaultRCert;
    rClaims @1 :RClaims = .defaultRClaims;
    sigShare @2 :Data = 0x"00";
}

struct NextRound {
    nRClaims @0 :NRClaims = .defaultNRClaims;
    signature @1 :Data = 0x"00";
}

struct NHClaims {
    proposal @0 :Proposal = .defaultProposal;
    sigShare @1 :Data = 0x"00";
}

struct NextHeight {
    nHClaims @0 :NHClaims = .defaultNHClaims;
    signature @1 :Data = 0x"00";
    preCommits @2 :Data = 0x"00";
}

struct BlockHeader {
    bClaims @0 :BClaims = .defaultBClaims;
    sigGroup @1 :Data = 0x"00";
    txHshLst @2 :Data = 0x"00";
}
