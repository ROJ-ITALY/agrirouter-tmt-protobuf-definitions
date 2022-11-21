printf 'Removing old generated files.\n\n'
rm -rf generated/
rm -rf ../../AgrirouterTMTProtobufDefinitions

printf 'Create new output folders.\n\n'
mkdir generated
mkdir -p ../../AgrirouterTMTProtobufDefinitions/Agrirouter/TechnicalMessageType
mkdir -p ../../AgrirouterTMTProtobufDefinitions/Efdi


printf 'Generating files from TechnicalMessageTypes.\n\n' 
protoc --python_out=generated/ agrirouter/protobuf/technicalmessagetype/gps.proto
protoc --python_out=generated/ agrirouter/protobuf/technicalmessagetype/efdi.proto

printf 'Copy into demo-ag dir.\n\n'
cp generated/agrirouter/protobuf/technicalmessagetype/gps_pb2.py ../../AgrirouterTMTProtobufDefinitions/Agrirouter/TechnicalMessageType/gps_pb2.py
cp generated/agrirouter/protobuf/technicalmessagetype/efdi_pb2.py ../../AgrirouterTMTProtobufDefinitions/Efdi/efdi_pb2.py

