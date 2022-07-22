printf 'Removing generated files.\n\n'
rm -rf generated/Agrirouter 

printf 'Create folders.\n\n'
mkdir -p generated/Agrirouter/TechnicalMessageType
mkdir -p generated/Efdi

printf 'Generating files | TechnicalMessageTypes\n\n' 
protoc -Igoogle/protobuf -Iagrirouter/protobuf --csharp_out=generated/Agrirouter/TechnicalMessageType agrirouter/protobuf/technicalmessagetype/gps.proto
protoc -Igoogle/protobuf -Iagrirouter/protobuf --csharp_out=generated/Efdi agrirouter/protobuf/technicalmessagetype/efdi.proto

printf 'Exchange files from the solution.\n\n'
rm -rf AgrirouterTMTProtobufDefinitions/AgrirouterTMTProtobufDefinitions/Agrirouter
rm -rf AgrirouterTMTProtobufDefinitions/AgrirouterTMTProtobufDefinitions/Efdi
mv generated/Agrirouter AgrirouterTMTProtobufDefinitions/AgrirouterTMTProtobufDefinitions
mv generated/Efdi AgrirouterTMTProtobufDefinitions/AgrirouterTMTProtobufDefinitions

printf 'Clean up.\n\n'
rm -rf generated
