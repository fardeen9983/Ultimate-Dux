import { useReducer, useEffect } from "react";
import axios from "axios";

const BASE_URL =
  "https://jobs.github.com/positions.json";

const ACTIONS = {
  MAKE_REQUEST: "make_request",
  GET_DATA: "get_data",
  ERROR: "error",
};

function reducer(state, action) {
  switch (action.type) {
    case ACTIONS.MAKE_REQUEST:
      return { loading: true, jobs: [], error: false };
    case ACTIONS.GET_DATA:
      return { ...state, loading: false, jobs: action.payload.jobs };
    case ACTIONS.ERROR:
      return { loading: false, error: action.payload.error, jobs: [] };
    default:
      return state;
  }
}
export default function useFetchJobs(params, page) {
  const [state, dispatch] = useReducer(reducer, { jobs: [], loading: true });

  useEffect(() => {
    const cancelToken = axios.CancelToken.source()
    dispatch({ type: ACTIONS.MAKE_REQUEST });
    axios
      .get(BASE_URL, {
        cancelToken : cancelToken.token,
        params: {
          markdown: true,
          page: page,
          ...params,
        },
      })
      .then((res) => {
        dispatch({ type: ACTIONS.GET_DATA, payload: { jobs: res.data } });
      })
      .catch((e) => {
        if(axios.isCancel(e)) return 
        dispatch({ type: ACTIONS.ERROR, payload: { error: e } });
      });
      return ()=>{
        cancelToken.cancel();
      }
  }, [params, page]);

  return state;
}
