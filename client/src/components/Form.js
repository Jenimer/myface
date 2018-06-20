import React from 'react'
    
export const Update = (user) => {
    return(dispatch) => {
        axios.put('/api/faces/:id')
        .then(res => {

        })
    }
}
    render ()



export default Form;