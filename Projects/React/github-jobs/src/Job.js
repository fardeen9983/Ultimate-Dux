import React, { useState } from "react";
import { Card, Badge, Button, Collapse } from "react-bootstrap";
import ReactMarkdown from "react-markdown";

export default function Job({ job }) {
  const [open, setOpen] = useState(false);
  return (
    <Card className="mb-3">
      <Card.Body>
        <div className="justify-content-between d-flex">
          <div>
            <Card.Title>
              {job.title} -{" "}
              <span className="text-muted font-weight-light">
                {job.company}
              </span>
            </Card.Title>
            <Card.Subtitle className="text-muted mb-2">
              {new Date(job.created_at).toLocaleDateString()}
            </Card.Subtitle>
            <Badge variant="secondary" className="mr-2">
              {job.type}
            </Badge>
            <Badge variant="secondary">{job.location}</Badge>
            <div style={{ wordBreak: "break-all" }}>
              <ReactMarkdown source={job.how_to_apply} />
            </div>
          </div>
          <img
            alt={job.company}
            src={job.company_logo}
            className="d-none d-md-block"
            height="50"
          />
        </div>
        <Card.Text>
          <Button variant="primary" onClick={() => setOpen((prev) => !prev)}>
            {open ? "Hide Details" : "View Details"}
          </Button>
          <Collapse in={open}>
            <div className="mt-4">
              <ReactMarkdown source={job.description} />
            </div>
          </Collapse>
        </Card.Text>
      </Card.Body>
    </Card>
  );
}
