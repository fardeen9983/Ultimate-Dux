import React from "react";
import { Form, Col } from "react-bootstrap";
export default function SearchForm({ params, onParamChange }) {
  return (
    <Form className="mb-4">
      <Form.Row className="align-items-end">
        <Form.Group as={Col}>
          <Form.Label>Description</Form.Label>
          <Form.Control
            name="description"
            type="text"
            onChange={onParamChange}
            value={params.description}
          />
        </Form.Group>
        <Form.Group as={Col}>
          <Form.Label>Location</Form.Label>
          <Form.Control
            name="location"
            type="text"
            value={params.location}
            onChange={onParamChange}
          />
        </Form.Group>
        <Form.Group as={Col} xs="auto" className="ml-2">
          <Form.Check
            name="full_time"
            id="full_time"
            label="Only Full Time"
            type="checkbox"
            className="mb-2"
            value={params.full_time}
            onChange={onParamChange}
          />
        </Form.Group>
      </Form.Row>
    </Form>
  );
}
