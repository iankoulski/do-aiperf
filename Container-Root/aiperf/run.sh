#!/bin/bash

source .env

if [ "${ENDPOINT_URL}" == "" ]; then
	echo ""
	echo "ENDPOINT_URL is required."
	echo "Please ensure it is specified in .env"
	echo ""
else

	CMD="aiperf profile --model ${MODEL_NAME} --tokenizer ${TOKENIZER} --url ${ENDPOINT_URL} --endpoint-type=${ENDPOINT_TYPE} --streaming --concurrency ${CONCURRENCY} --request-count ${REQUEST_COUNT} --synthetic-input-tokens-mean ${INPUT_TOKENS_MEAN} --synthetic-input-tokens-stdev ${INPUT_TOKENS_STDEV} --output-tokens-mean ${OUTPUT_TOKENS_MEAN} --random-seed ${RANDOM_SEED} --extra-inputs ${EXTRA_INPUTS}"

	if [ ! "${verbose}" == "false" ]; then
		echo ""
		echo "${CMD}"
		echo ""
	fi

	eval "${CMD}"

fi
