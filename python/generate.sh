printf 'Removing old generated files.\n\n'
rm -rf generated/
rm -rf ../../Agrirouter
rm -rf ../../Efdi

printf 'Create new output folders.\n\n'
mkdir -p ../../Agrirouter/TechnicalMessageType
mkdir -p ../../Efdi
mkdir generated

printf 'Generating files from TechnicalMessageTypes.\n\n' 
protoc --python_out=generated/ agrirouter/protobuf/technicalmessagetype/gps.proto
protoc --python_out=generated/ agrirouter/protobuf/technicalmessagetype/efdi.proto


cp generated/agrirouter/protobuf/technicalmessagetype/gps_pb2.py ../../Agrirouter/TechnicalMessageType/gps_pb2.py
cp generated/agrirouter/protobuf/technicalmessagetype/efdi_pb2.py ../../Efdi/efdi_pb2.py

