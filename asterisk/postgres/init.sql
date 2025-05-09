-- Tabela de CDR
CREATE TABLE cdr (
  calldate TIMESTAMP NOT NULL,
  clid VARCHAR(80) NOT NULL,
  src VARCHAR(80) NOT NULL,
  dst VARCHAR(80) NOT NULL,
  dcontext VARCHAR(80) NOT NULL,
  channel VARCHAR(80) NOT NULL,
  dstchannel VARCHAR(80) NOT NULL,
  lastapp VARCHAR(80) NOT NULL,
  lastdata VARCHAR(80) NOT NULL,
  duration INTEGER NOT NULL,
  billsec INTEGER NOT NULL,
  disposition VARCHAR(45) NOT NULL,
  amaflags INTEGER NOT NULL,
  accountcode VARCHAR(20) NOT NULL,
  uniqueid VARCHAR(32) NOT NULL,
  userfield VARCHAR(255),
  did VARCHAR(50),
  recordingfile VARCHAR(255),
  cnum VARCHAR(80),
  cnam VARCHAR(80),
  outbound_cnum VARCHAR(80),
  outbound_cnam VARCHAR(80),
  dst_cnam VARCHAR(80)
);

-- Tabela de CEL
CREATE TABLE cel (
  id SERIAL PRIMARY KEY,
  eventtime TIMESTAMP NOT NULL,
  eventtype VARCHAR(30) NOT NULL,
  cid_name VARCHAR(80),
  cid_num VARCHAR(80),
  cid_ani VARCHAR(80),
  cid_rdnis VARCHAR(80),
  cid_dnid VARCHAR(80),
  exten VARCHAR(80),
  context VARCHAR(80),
  channame VARCHAR(80),
  appname VARCHAR(80),
  appdata VARCHAR(80),
  amaflags INTEGER,
  accountcode VARCHAR(20),
  uniqueid VARCHAR(32),
  linkedid VARCHAR(32),
  peer VARCHAR(80),
  userdeftype VARCHAR(255),
  extra TEXT
);

-- Tabela de ramais/extensões
CREATE TABLE extensions (
  id SERIAL PRIMARY KEY,
  context VARCHAR(20) NOT NULL,
  exten VARCHAR(20) NOT NULL,
  priority INTEGER NOT NULL,
  app VARCHAR(20),
  appdata VARCHAR(128)
);

-- Tabela de usuários
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  context VARCHAR(80),
  language VARCHAR(2),
  callerid VARCHAR(80),
  cid_number VARCHAR(80),
  callgroup VARCHAR(80),
  pickupgroup VARCHAR(80),
  mailbox VARCHAR(80),
  vmexten VARCHAR(80),
  username VARCHAR(80)
);

-- Tabelas de configuração PJSIP
CREATE TABLE ps_aors (
  id VARCHAR(40) PRIMARY KEY,
  contact TEXT,
  default_expiration INTEGER,
  max_contacts INTEGER,
  minimum_expiration INTEGER,
  remove_existing BOOLEAN,
  qualify_frequency INTEGER,
  authenticate_qualify BOOLEAN,
  maximum_expiration INTEGER,
  outbound_proxy TEXT,
  support_path BOOLEAN
);

CREATE TABLE ps_auths (
  id VARCHAR(40) PRIMARY KEY,
  auth_type VARCHAR(20),
  nonce_lifetime INTEGER,
  md5_cred VARCHAR(80),
  password VARCHAR(80),
  realm VARCHAR(80),
  username VARCHAR(80)
);

CREATE TABLE ps_domain_aliases (
  id VARCHAR(40) PRIMARY KEY,
  domain VARCHAR(80)
);

CREATE TABLE ps_endpoint_id_ips (
  id VARCHAR(40) PRIMARY KEY,
  endpoint VARCHAR(40),
  match TEXT
);

CREATE TABLE ps_endpoints (
  id VARCHAR(255) PRIMARY KEY,
  transport VARCHAR(40),
  aors VARCHAR(2048),
  auth VARCHAR(255),
  context VARCHAR(40),
  disallow VARCHAR(200),
  allow VARCHAR(200),
  direct_media BOOLEAN,
  force_rport BOOLEAN,
  ice_support BOOLEAN,
  identify_by VARCHAR(80),
  rewrite_contact BOOLEAN,
  rtp_symmetric BOOLEAN,
  callerid VARCHAR(40)
);

CREATE TABLE ps_globals (
  id VARCHAR(40) PRIMARY KEY,
  useragent VARCHAR(255)
);

CREATE TABLE ps_registrations (
  id VARCHAR(40) PRIMARY KEY,
  auth_rejection_permanent BOOLEAN,
  client_uri TEXT,
  contact_user VARCHAR(80),
  expiration INTEGER,
  outbound_auth VARCHAR(40),
  outbound_proxy TEXT,
  retry_interval INTEGER,
  server_uri TEXT,
  transport VARCHAR(40),
  forbidden_retry_interval INTEGER,
  max_retries INTEGER,
  fatal_retry_interval INTEGER
);

CREATE TABLE ps_transports (
  id VARCHAR(40) PRIMARY KEY,
  async_operations INTEGER,
  bind TEXT,
  ca_list_file TEXT,
  cert_file TEXT,
  cipher TEXT,
  domain VARCHAR(80),
  external_media_address VARCHAR(80),
  external_signaling_address VARCHAR(80),
  external_signaling_port INTEGER,
  method VARCHAR(40),
  local_net VARCHAR(80),
  password VARCHAR(80),
  protocol VARCHAR(40),
  require_client_cert BOOLEAN,
  verify_client BOOLEAN,
  verify_server BOOLEAN,
  username VARCHAR(80)
);

