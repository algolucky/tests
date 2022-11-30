%/archival:
	NETWORK=$* docker-compose -f docker-compose.yml -f docker-compose.archival.yml up -d

%/down:
	NETWORK=$* docker-compose down

%/fast-catchup:
	NETWORK=$* FAST_CATCHUP=1 docker-compose up -d

%/logs:
	NETWORK=$* docker-compose logs -f

%/rm:
	NETWORK=$* docker-compose down --volumes --remove-orphans

%/status:
	NETWORK=$* docker-compose exec algod goal node status

%/telemetry:
	NETWORK=$* docker-compose -f docker-compose.yml -f docker-compose.archival.yml up -d
